# Task 3(a): False Condition Branch Fallthrough
.text
.globl main
main:
    addi  s0, s0, 4         # s0 = s0 + 4 (s0 = 4)
    addi  s1, s1, 6         # s1 = s1 + 6 (s1 = 6)
    beq   s0, s1, Fin       # If (s0 == s1) jump to Fin; false, fallthrough to True
True:
    add   s2, s1, s0        # s2 = s1 + s0 = 10 (runs when s0 != s1)
    j     end               # Unconditionally jump to end, skipping Fin
Fin:
    sub   s2, s1, s0        # s2 = s1 - s0 (runs when s0 == s1)
end:
    li    a7, 10            # Exit code
    ecall
