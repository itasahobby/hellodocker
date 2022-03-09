entypoint=hello

compile: ${entypoint}.asm 
		nasm -f elf64 ${entypoint}.asm -o ${entypoint}.o
		ld -m elf_x86_64 -o ${entypoint} ${entypoint}.o

install: compile