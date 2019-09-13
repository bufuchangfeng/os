#include "memory.h"
#include "stdint.h"
#include "print.h"

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
