# Lab 4: Combinational Circuit Design

## Introduction
This experiment demonstrates the design and implementation of a combinational logic circuit using SystemVerilog. The circuit takes two 2-bit binary inputs (`a` and `b`) and produces three outputs (`r`, `g`, and `bl`) that control LED colors based on specified logical conditions.

## Files Included
### 1. RTL Code
- **`lab4.sv`**: Defines the combinational logic circuit in SystemVerilog.

### 2. Testbench
- **`lab4_tb.sv`**: Provides a test environment to verify the functionality of `lab4.sv` by simulating various input conditions and checking expected outputs.

### 3. Constraints File
- **`lab4_comb.xdc`**: Maps input and output signals to the FPGA hardware used in the lab.

### 4. Documentation
- **`lab4.drawio`**: A circuit diagram drawn using draw.io to visually represent the logic design.

## Circuit Design and Logic Equations
The logic circuit is designed using Karnaugh maps (K-maps) to derive the following Boolean equations for the outputs:

```verilog

r = (a[0] & a[1]) | ((~(b[0])) & (~(b[1]))) | (a[0] & (~(b[1]))) | ((~(b[0])) & a[1]) | (a[1] & (~(b[1])));
g = ((~(a[0])) & b[1]) | ((~(a[1])) & b[0]) | (b[0] & b[1]) | ((~(a[1])) & b[1]) | ((~(a[0])) & (~(a[1])));
bl = ((~(a[0])) & b[0]) | (a[0] & (~(b[0]))) | (a[1] & (~(b[1]))) | ((~(a[1])) & b[1]);
```

## Circuit Diagram
Following is a graphical representation of the combinational logic circuit, designed using draw.io:

![Lab-4 Circuit Diagram](C:\Users\M.Sadeem Hannan\Desktop\DSD_2023_EE_079\Lab4\docs\lab4.drawio) 


