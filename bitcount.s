        pushl   %ebp            # save from pointer
        movl    %esp, %ebp      # adjust stack pointer

        movl    $0x12345678, %eax
        movl    $0, %ecx
        movl    $0,%edx
.LC1:
        movl    %eax, %ebx      # b = a
        andl    $1, %ebx        # b = b & 1
        addl    %ebx, %ecx      # c = c + b
        sarl    $1, %eax        # a >> 1
        incl    %edx            # d++
        cmpl    $32,%edx        # 32 - d
        jne     .LC1            # jump not equal to .LC1

        pushl   $0x12345678
        pushl   %ecx
        pushl   $.LC0   
        call    printf


        leave                   # restore the current activation
        ret                     # return to caller
