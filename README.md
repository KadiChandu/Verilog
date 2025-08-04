# Gate-Level T Flip-Flop (Verilog)

This repository contains a **gate-level Verilog implementation of a T (Toggle) Flip-Flop**, a fundamental building block in digital sequential logic used for counting, toggling, and frequency division. The design is built entirely from **logic gates** (no behavioral constructs), making it ideal for education, **Design-for-Test (DFT)** purposes, and VLSI labs.


##  What is a T Flip-Flop?

A **T (Toggle) Flip-Flop** changes its output state on each clock cycle **only when the T input is HIGH**. It is derived from a D Flip-Flop by feeding back the output XORed with the T input.

- If **T = 0**, the output **holds** its state.
- If **T = 1**, the output **toggles** on the clock edge.

##  Usage

- VLSI beginners and students
- Digital Design labs
- Learning scan flip-flop construction


## ✅ Features

- Gate-level implementation only (no behavioral code)
- Modular and easy-to-read
- Compatible with DFT flows
- Ideal for toggling logic and binary counters


