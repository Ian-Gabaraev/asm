# Program to add two plus three 
        .text
        .globl  main

main:
        ori     $8,$0,0x2       # put two's comp. two into register 8
        ori     $9,$0,0x3       # put two's comp. three into register 9
        addu    $10,$8,$9       # add register 8 and 9, put result in 10
        mul     $11,$8,$9       # multiply registers 8 and 9, put res in 11

        ori     $v0, $0, 0x4
        ori     $a0, $0, 0x4

        syscall
        
# End of file
