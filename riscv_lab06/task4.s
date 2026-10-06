.text
main:
    li a3, 10
    jal ra, AreaFinder
    li a0, 1
    mv a1, t0
    ecall
    jal ra, Perimeter
    li a0, 1
    mv a1, t2
    ecall
    li a0, 10
    ecall
AreaFinder:
    mul t0, a3, a3
    jalr zero, ra, 0
Perimeter:
    slli t2, a3, 2
    jalr zero, ra, 0
