nasm -f elf64 add_simple.asm -o output.o
ld output.o -o output
echo "output:"
./output
