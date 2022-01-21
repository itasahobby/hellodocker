tag=dockereader
entypoint=reader

clean:
	rm ${entypoint}.o

compile: ${entypoint}.asm 
	nasm -f elf64 ${entypoint}.asm -o ${entypoint}.o
	ld -m elf_x86_64 -o ${entypoint} ${entypoint}.o

build:
	docker build -t ${tag} .

install: compile clean build
