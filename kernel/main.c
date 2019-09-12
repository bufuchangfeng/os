#include "print.h"
#include "interrupt.h"
#include "string.h"

void main(void) {
   put_str("This is kernel\n");
	
   idt_init();
 	
   //  asm volatile("sti");
	
  //  char *a = "hello";
  //  char b[6];

  //  memcpy(b, a, 5);
   	
  //  put_str(b);

   while(1);
}
