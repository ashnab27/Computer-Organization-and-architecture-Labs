.text
main:
    li a0, 1
    li s1, 2500
    jal ra, procedure
    add t1, s1, a0
    li a0, 1
    mv a1, t1
    ecall
    jal zero, exit
procedure:
    li s0, 3
    li t0, 1000
    add a0, s0, t0
    jalr zero, ra, 0
exit:
    li a0, 10
    ecall
