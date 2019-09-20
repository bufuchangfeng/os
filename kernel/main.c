#include "print.h"
#include "interrupt.h"
#include "string.h"
#include "debug.h"
#include "memory.h"
#include "thread.h"

void k_thread_a(void*);

void main(void) {
   put_str("This is kernel\n");
	
   idt_init();

   mem_init();

   void* addr = get_kernel_pages(3);
   put_str("\n");
   put_int((uint32_t)addr);
   put_str("\n");

   thread_start("a", 31, k_thread_a, "argA");
   //  ASSERT(1==2);
   //  asm volatile("sti");
	
  //  char *a = "hello";
  //  char b[6];

  //  memcpy(b, a, 5);
   	
  //  put_str(b);

   while(1);
}

void k_thread_a(void *arg){
	char *para = arg;
	while(1){
		put_str(para);
	}
}


