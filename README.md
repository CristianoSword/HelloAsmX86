# HelloAsmX86
Simple Hello World in Assembly x86 for Windows 10 64 bits


Compile e linker:
```Bash
nasm -f win64 hello.asm -o hello.obj
gcc hello.obj -o hello.exe -lmsvcrt
```
Output:
```
Hello, World x86-64!
Cristiano Camacho 03/11/24 16:47
```
