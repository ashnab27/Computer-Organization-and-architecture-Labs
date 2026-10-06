.text
main:
    li t0, 1
    li t1, 1
    li t2, 2
    li a2, 10
    li a3, 20
    beq t0, t2, F1
    bgt t1, t2, F2
    ble t1, t2, F3
F1:
    mul t3, a2, a2
    mul t4, a3, a3
    add a5, t4, t3
    j end
F2:
    mul a5, t1, t1
    mul a5, a5, t1
    j end
F3:
    addi a5, t1, 5
end:
    li a7, 1
    mv a0, a5
    ecall
    li a0, 10
    ecall
