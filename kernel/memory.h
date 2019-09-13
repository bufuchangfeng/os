#include "stdint.h"
#include "bitmap.h"

struct virtual_addr{
	struct bitmap vaddr_bitmap;
	uint32_t vaddr_start;
	// 这里的size应该是4g？？？
};

extern struct pool kernel_pool, user_pool;
void mem_init();

