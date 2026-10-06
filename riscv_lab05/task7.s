# Task 7: Array Allocation on Stack Frame
.text
.globl main
main:
    addi  sp, sp, -40       # Reserve 10 words (40 bytes) on stack
    mv    t1, sp            # t1 = array base address
    addi  t0, zero, 0       # i = 0

while:
    addi  t2, zero, 5       # Upper threshold limit = 5
    bge   t0, t2, end       # If i >= 5, exit loop
    addi  t3, t0, 5         # t3 = i + 5
    slli  t4, t0, 2         # t4 = i * 4 (word byte-offset)
    add   t5, t1, t4        # t5 = base address + offset
    sw    t3, 0(t5)         # num[i] = i + 5
    addi  t0, t0, 1         # i++
    j     while

end:
    addi  sp, sp, 40        # Deallocate stack frame
    li    a7, 10            # Exit simulator
    ecall
