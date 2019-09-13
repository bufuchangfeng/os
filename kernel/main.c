#include "print.h"
#include "interrupt.h"
#include "string.h"
#include "debug.h"
#include "memory.h"

void main(void) {
   put_str("This is kernel\n");
	
   idt_init();

   mem_init();

   //  ASSERT(1==2);
   //  asm volatile("sti");
	
  //  char *a = "hello";
  //  char b[6];

  //  memcpy(b, a, 5);
   	
  //  put_str(b);

   while(1);
}
