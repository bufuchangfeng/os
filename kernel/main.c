#include "print.h"
#include "interrupt.h"
#include "string.h"
#include "debug.h"
#include "memory.h"

void main(void) {
   put_str("This is kernel\n");
	
   idt_init();

   mem_init();

   void* addr = get_kernel_pages(3);
   put_str("\n");
   put_int((uint32_t)addr);
   put_str("\n");

   //  ASSERT(1==2);
   //  asm volatile("sti");
	
  //  char *a = "hello";
  //  char b[6];

  //  memcpy(b, a, 5);
   	
  //  put_str(b);

   while(1);
}
