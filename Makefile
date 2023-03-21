all:
	@nasm -f elf *.asm
	@gcc -m32 -no-pie -o ghoul *.o
