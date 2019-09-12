#include "stdint.h"
#include "print.h"
#define PIC_M_CTRL 0x20	       
#define PIC_M_DATA 0x21	       
#define PIC_S_CTRL 0xa0	       
#define PIC_S_DATA 0xa1	       

#define IDT_DESC_CNT 256

static inline void outb(uint16_t port, uint8_t data) {
   asm volatile ( "outb %b0, %w1" : : "a" (data), "Nd" (port));    
}

static inline void outsw(uint16_t port, const void* addr, uint32_t word_cnt) {

   asm volatile ("cld; rep outsw" : "+S" (addr), "+c" (word_cnt) : "d" (port));
}

static inline uint8_t inb(uint16_t port) {
   uint8_t data;
   asm volatile ("inb %w1, %b0" : "=a" (data) : "Nd" (port));
   return data;
}

static inline void insw(uint16_t port, void* addr, uint32_t word_cnt) {
   asm volatile ("cld; rep insw" : "+D" (addr), "+c" (word_cnt) : "d" (port) : "memory");
}

struct gate_desc {
   uint16_t    func_offset_low_word;
   uint16_t    selector;
   uint8_t     dcount;  
   uint8_t     attribute;
   uint16_t    func_offset_high_word;
};


static void make_idt_desc(struct gate_desc* p_gdesc, uint8_t attr, void* function);
static struct gate_desc idt[IDT_DESC_CNT];  
char * intr_name[IDT_DESC_CNT];

void* idt_table[IDT_DESC_CNT];

extern void* vectors[IDT_DESC_CNT];	

static void general_intr_handler(uint8_t vecno){
	if(vecno == 0x27 || vecno == 0x2f){
		return;
	}
	put_str("vector no: 0x");
	put_int(vecno);
	put_char('\n');
}

static void pic_init(void) {

   outb (PIC_M_CTRL, 0x11);   
   outb (PIC_M_DATA, 0x20);   
   outb (PIC_M_DATA, 0x04);    
   outb (PIC_M_DATA, 0x01);   

   outb (PIC_S_CTRL, 0x11);	
   outb (PIC_S_DATA, 0x28);	
   outb (PIC_S_DATA, 0x02);	
   outb (PIC_S_DATA, 0x01);	


   outb (PIC_M_DATA, 0xfe);
   outb (PIC_S_DATA, 0xff);
}

static void exception_init(void) {
   int i;
   for (i = 0; i < IDT_DESC_CNT; i++) {
      idt_table[i] = general_intr_handler;		   					    
      intr_name[i] = "unknown";				 
   }
   intr_name[0] = "#DE Divide Error";
   intr_name[1] = "#DB Debug Exception";
   intr_name[2] = "NMI Interrupt";
   intr_name[3] = "#BP Breakpoint Exception";
   intr_name[4] = "#OF Overflow Exception";
   intr_name[5] = "#BR BOUND Range Exceeded Exception";
   intr_name[6] = "#UD Invalid Opcode Exception";
   intr_name[7] = "#NM Device Not Available Exception";
   intr_name[8] = "#DF Double Fault Exception";
   intr_name[9] = "Coprocessor Segment Overrun";
   intr_name[10] = "#TS Invalid TSS Exception";
   intr_name[11] = "#NP Segment Not Present";
   intr_name[12] = "#SS Stack Fault Exception";
   intr_name[13] = "#GP General Protection Exception";
   intr_name[14] = "#PF Page-Fault Exception";
   intr_name[16] = "#MF x87 FPU Floating-Point Error";
   intr_name[17] = "#AC Alignment Check Exception";
   intr_name[18] = "#MC Machine-Check Exception";
   intr_name[19] = "#XF SIMD Floating-Point Exception";

}


static void make_idt_desc(struct gate_desc* p_gdesc, uint8_t attr, void* function) { 
   p_gdesc->func_offset_low_word = (uint32_t)function & 0x0000FFFF;
   p_gdesc->selector = (1<<3);
   p_gdesc->dcount = 0;
   p_gdesc->attribute = attr;
   p_gdesc->func_offset_high_word = ((uint32_t)function & 0xFFFF0000) >> 16;
}


static void idt_desc_init(void) {
   int i;
   for (i = 0; i < IDT_DESC_CNT; i++) {
      make_idt_desc(&idt[i], (1 << 7) + 0xE, vectors[i]); 
   }
}

void idt_init() {
   idt_desc_init();	
   exception_init();   
   pic_init();

   uint64_t idt_operand = ((sizeof(idt) - 1) | ((uint64_t)(uint32_t)idt << 16));
   asm volatile("lidt %0" : : "m" (idt_operand));
}

