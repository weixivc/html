.LC1:
        .string "0x%x\n"

        .globl main
main:
        pushl   %ebp            # save from pointer
        movl    %esp, %ebp      # adjust stack pointer

        movl    $0x12345678, %eax
        movl    $1, %ecx
        sall    $3, %ecx
        sarl    %cl, %eax
        andl    $0xFF, %eax
        pushl   %eax
        pushl   $.LC1   
        call    printf

        leave                   # restore the current activation
        ret                     # return to caller
