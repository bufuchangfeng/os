objects =  build/main.o

all: build/kernel.bin boot loader
	dd if=build/loader.bin of=os.img bs=512 count=4 seek=2 conv=notrunc
	dd if=build/boot.bin of=os.img bs=512 count=1 seek=0 conv=notrunc
	dd if=build/kernel.bin of=os.img bs=512 count=200 seek=9 conv=notrunc
boot:
	nasm boot/boot.s -o build/boot.bin -I boot/include/
loader: 
	nasm boot/loader.s -o build/loader.bin -I boot/include/
loader:
build/kernel.bin: $(objects)
	ld -Ttext 0xc0001500 -e main -o build/kernel.bin $(objects) -m elf_i386

build/main.o: kernel/main.c
	gcc -I kernel/ -o build/main.o kernel/main.c -I lib/kernel/ -c -m32
.PHONY: clean boot loader
clean:
	rm -rf build/kernel.bin $(objects)

