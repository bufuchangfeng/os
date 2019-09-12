#include "print.h"
#include "interrupt.h"
void main(void) {
   put_str("This is kernel\n");
	
   idt_init();
 	
   asm volatile("sti");

   while(1);
}
