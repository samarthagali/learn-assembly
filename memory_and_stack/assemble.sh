if [ $# -ne 1 ] ; then
    echo "Incorrect usage"
    exit 1
fi
asm_file=$1
if [ ! -f "$asm_file" ] ; then
    echo "file $asm_file not found"
    exit 1
fi
nasm -f elf32 "$asm_file" -o output.o
ld -m elf_i386 output.o -o output
echo "output:"
./output