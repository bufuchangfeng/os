objects =  build/main.o build/print.o build/interrupt.o build/vectors.o build/timer.o	\
	   build/string.o build/debug.o build/bitmap.o build/memory.o

all: build/kernel.bin boot loader
	dd if=build/loader.bin of=os.img bs=512 count=4 seek=2 conv=notrunc
	dd if=build/boot.bin of=os.img bs=512 count=1 seek=0 conv=notrunc
	dd if=build/kernel.bin of=os.img bs=512 count=200 seek=9 conv=notrunc
boot:
	nasm boot/boot.s -o build/boot.bin -I boot/include/
loader: 
	nasm boot/loader.s -o build/loader.bin -I boot/include/
build/kernel.bin: $(objects)
	ld -Ttext 0xc0001500 -e main -o build/kernel.bin $(objects) -m elf_i386

build/memory.o:
	gcc -I kernel/ -o build/memory.o -c -m32 -I lib/kernel/ -I lib/ kernel/memory.c
build/bitmap.o:
	gcc -I kernel/ -o build/bitmap.o -c -m32 -I lib/kernel/ -I lib/ lib/kernel/bitmap.c -fno-builtin   
build/debug.o:
	gcc -I kernel/ -o build/debug.o -c -m32 kernel/debug.c -I lib/kernel/
build/string.o:
	gcc -I lib/ -o build/string.o -c -m32 lib/string.c -fno-builtin
build/timer.o:
	gcc -I kernel/ -I device/ -o build/timer.o device/timer.c -c -m32 -fno-stack-protector -I lib/kernel
build/print.o:
	nasm lib/kernel/print.s -o build/print.o -I lib/kernel/ -f elf
build/vectors.o:
	nasm kernel/vectors.s -o build/vectors.o -f elf
build/interrupt.o:
	gcc -I kernel/ -I device/ -o build/interrupt.o kernel/interrupt.c -c -m32 -fno-stack-protector -I lib/kernel
build/main.o: kernel/main.c
	gcc -I kernel/ -o build/main.o kernel/main.c -I lib/kernel/ -c -m32
.PHONY: clean boot loader
clean:
	rm -rf build/kernel.bin $(objects)

