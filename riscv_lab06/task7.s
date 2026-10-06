.text
main:
    li t0, 0
    li t1, 5
    li t2, 5
    beq t2, t0, fun1
    beq t1, t2, fun2
    j fun3
fun1:
    mul a5, t1, t1
    j end
fun2:
    mul a5, t1, t1
    mul a5, a5, t1
    j end
fun3:
    addi a5, t1, 1
    j end
end:
    mv a1, a5
    li a0, 1
    ecall
    li a0, 10
    ecall
