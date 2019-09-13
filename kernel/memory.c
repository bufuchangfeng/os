#include "memory.h"
#include "stdint.h"
#include "print.h"
#include "debug.h"
#include "string.h"
#define PDE_IDX(addr) ((addr & 0xffc00000) >> 22)
#define PTE_IDX(addr) ((addr & 0x003ff000) >> 12)


struct pool{
	struct bitmap pool_bitmap;
	uint32_t phy_addr_start;
	uint32_t pool_size;
};

struct pool kernel_pool, user_pool;

struct virtual_addr kernel_vaddr;

static void mem_pool_init(uint32_t all_mem){
	uint32_t page_table_size = 256 * 4096;
	uint32_t used_mem = page_table_size + 0x100000;

	uint32_t free_mem = all_mem - used_mem;

	uint16_t all_free_pages = free_mem / 4096;

	uint16_t kernel_free_pages = all_free_pages / 2;

	uint16_t user_free_pages = all_free_pages - kernel_free_pages;

	uint32_t kbm_length = kernel_free_pages / 8;
	uint32_t ubm_length = user_free_pages / 8;

	uint32_t kp_start = used_mem;
	uint32_t up_start = used_mem + kernel_free_pages * 4096;

	kernel_pool.phy_addr_start = kp_start;
	user_pool.phy_addr_start = up_start;

	kernel_pool.pool_size = kernel_free_pages * 4096;
	user_pool.pool_size = user_free_pages * 4096;

	kernel_pool.pool_bitmap.btmp_bytes_len = kbm_length;
	user_pool.pool_bitmap.btmp_bytes_len = ubm_length;

	kernel_pool.pool_bitmap.bits = (void*)0xc009a000;

	user_pool.pool_bitmap.bits = (void*)(0xc009a000 + kbm_length);

	bitmap_init(&kernel_pool.pool_bitmap);
	bitmap_init(&user_pool.pool_bitmap);

	kernel_vaddr.vaddr_bitmap.btmp_bytes_len = kbm_length;
	kernel_vaddr.vaddr_bitmap.bits = (void*)(0xc009a000 + kbm_length + ubm_length);

	kernel_vaddr.vaddr_start = 0xc0100000;

	bitmap_init(&kernel_vaddr.vaddr_bitmap);
};

void mem_init(){
	uint32_t mem_bytes_total = (*(uint32_t*)(0xb00));
		
	put_int(mem_bytes_total);
	
	mem_pool_init(mem_bytes_total);
}

uint32_t* pte_ptr(uint32_t vaddr) {
   uint32_t* pte = (uint32_t*)(0xffc00000 + \
	 ((vaddr & 0xffc00000) >> 10) + \
	 PTE_IDX(vaddr) * 4);
   return pte;
}


uint32_t* pde_ptr(uint32_t vaddr) {
   uint32_t* pde = (uint32_t*)((0xfffff000) + PDE_IDX(vaddr) * 4);
   return pde;
}


static void* vaddr_get(int pf, uint32_t pg_cnt){
	int vaddr_start = 0, bit_idx_start = -1;
	uint32_t cnt = 0;
	if(pf == 1){
		bit_idx_start = bitmap_scan(&kernel_vaddr.vaddr_bitmap, pg_cnt);
		if(-1 == bit_idx_start){
			return 0;
		}
		// 这里可以再封装一个函数
		while(cnt < pg_cnt){
			bitmap_set(&kernel_vaddr.vaddr_bitmap, bit_idx_start + cnt++, 1);
		}
		vaddr_start = kernel_vaddr.vaddr_start + bit_idx_start * 4096;
		
	}
	else{
		
	}
	return (void*)vaddr_start;
}


static void* palloc(struct pool* m_pool){
	int bit_idx = bitmap_scan(&m_pool->pool_bitmap,  1);
	if(bit_idx == -1){
		return 0;
	}
	bitmap_set(&m_pool->pool_bitmap, bit_idx, 1);
	uint32_t page_phyaddr = m_pool->phy_addr_start + 4096 * bit_idx;

	return (void*)page_phyaddr;
}






static void page_table_add(void* _vaddr, void* _page_phyaddr) {
   uint32_t vaddr = (uint32_t)_vaddr, page_phyaddr = (uint32_t)_page_phyaddr;
   uint32_t* pde = pde_ptr(vaddr);
   uint32_t* pte = pte_ptr(vaddr);



   if (*pde & 0x00000001) {	 
      ASSERT(!(*pte & 0x00000001));

      if (!(*pte & 0x00000001)) {   
	 *pte = (page_phyaddr | PG_US_U | PG_RW_W | PG_P_1);   
      } else {			    
	 PANIC("pte repeat");
	 *pte = (page_phyaddr | PG_US_U | PG_RW_W | PG_P_1);     
      }
   } else {			   
     
      uint32_t pde_phyaddr = (uint32_t)palloc(&kernel_pool);

      *pde = (pde_phyaddr | PG_US_U | PG_RW_W | PG_P_1);

      memset((void*)((int)pte & 0xfffff000), 0, 4096);
         
      ASSERT(!(*pte & 0x00000001));
      *pte = (page_phyaddr | PG_US_U | PG_RW_W | PG_P_1);      // US=1,RW=1,P=1
   }
}


void *malloc_page(int pf, uint32_t pg_cnt){
	void *vaddr_start = vaddr_get(pf, pg_cnt);
	if(0 == vaddr_start){
		return 0;
	}
	uint32_t vaddr = (uint32_t)vaddr_start, cnt = pg_cnt;
	struct pool *mem_pool = pf & 1?&kernel_pool:&user_pool;


	// 为什么虚拟地址是连续的？？？虚拟地址不连续也可以？？？
	while(cnt-- > 0){
		void* page_phyaddr = palloc(mem_pool);
		if(0 == page_phyaddr){
			return 0;
		}
		page_table_add((void*)vaddr, page_phyaddr);
		vaddr += 4096;
	}
	return vaddr_start;
}


void *get_kernel_pages(uint32_t pg_cnt){
	void *vaddr = malloc_page(1, pg_cnt);
	if(vaddr != 0){
		memset(vaddr, 0, pg_cnt * 4096);
	}
	return vaddr;
}
