# Lab 05: Venus Simulator for Register-Level Execution of RISC-V Control Instructions

**Course:** Computer Architecture Lab (EL-2012)
**Institution:** National University of Computer and Emerging Sciences (FAST-NUCES), Islamabad
**Student Name:** Muhammad Ashnab Safdar
**Roll No:** 24I-6500
**Section:** CE-A
**Date Performed:** 15/09/2026
**Instructors:** Dr. Nasir Ali Shah, Engr. Fasih Ahmad
**Tools Used:** Venus RISC-V Simulator

---

## Directory & Task Breakdown

| Task File | Type | Description |
| :--- | :--- | :--- |
| `task1.txt` | Analysis | Analysis of RISC-V Branch/Jump Base ISA vs. Pseudo-instructions. |
| `task2.s`   | Code | Demonstration of conditional (`beq`) vs. unconditional (`j`) jumps. |
| `task3a.s`  | Code | Line-by-line commented program for false condition branch fallthrough. |
| `task3b.s`  | Code | Line-by-line commented program for true condition branch taken. |
| `task4.s`   | Code | C `if-else` block implementation using branch comparison and memory stores. |
| `task5.s`   | Code | Logical left shift demonstration (`slli`) illustrating $2^n$ multiplication. |
| `task6.s`   | Code | Assembly `for` loop implementation ($i=1 \dots 5$) maintaining a counter. |
| `task7.s`   | Code | Array allocation on the stack frame (`sp`) populated inside a `while` loop. |
| `task8.s`   | Code | Nested `for` loop implementation ($x=0 \dots 2$, $y=0 \dots 1$). |

---

## Instructions to Run
1. Open the [Venus Online Simulator](https://kvakil.github.io/venus/).
2. Copy any `.s` file contents into the **Editor** tab.
3. Click **Assemble & Simulate**.
4. Step through the program to observe register and stack frame updates.
