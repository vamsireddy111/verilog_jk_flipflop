# JK Flip-Flop using Verilog
# Overview

The JK Flip-Flop is a fundamental sequential circuit in digital electronics. 
It improves upon the SR Flip-Flop by eliminating the invalid state and introducing a toggle condition.

This project demonstrates the design, simulation, and verification of a JK Flip-Flop using Verilog HDL.

# Working Principle

The JK Flip-Flop operates based on two inputs:

J (Set)
K (Reset)

The output changes only on the positive edge of the clock (↑clk).

# Truth Table
J	K	Q (Next State)
0	0	No Change
0	1	Reset (0)
1	0	Set (1)
1	1	Toggle

# Key Observations
Output changes only at positive clock edge
J=0, K=0 → Hold state
J=0, K=1 → Reset
J=1, K=0 → Set
J=1, K=1 → Toggle
Reset initializes output to 0
