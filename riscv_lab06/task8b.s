.text
main:
    li a0, 7
    jal ra, fib
    mv a1, a0
    li a0, 1
    ecall
    li a0, 10
    ecall
fib:
    addi sp, sp, -12
    sw ra, 8(sp)
    sw a0, 4(sp)
    beq a0, x0, BASE_ZERO
    li t0, 1
    beq a0, t0, BASE_ONE
    addi a0, a0, -1
    jal ra, fib
    sw a0, 0(sp)
    lw a0, 4(sp)
    addi a0, a0, -2
    jal ra, fib
    lw t1, 0(sp)
    add a0, t1, a0
    j FIB_RETURN
BASE_ZERO:
    li a0, 0
    j FIB_RETURN
BASE_ONE:
    li a0, 1
FIB_RETURN:
    lw ra, 8(sp)
    addi sp, sp, 12
    jalr x0, ra, 0
