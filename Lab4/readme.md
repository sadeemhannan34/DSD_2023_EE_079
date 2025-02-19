# Lab 4: Combinational Circuit Design

## Description
This experiment implements a combinational logic circuit. The circuit takes two 2-bit inputs (`a` and `b`) and produces three outputs (`r`, `g`, and `bl`) LEDs, based on given conditions the LEDs combine to form different color output.

## Files Included
- rtl folder includes `lab4.sv` - SystemVerilog module which defines the combinational circuit.
- bench folder includes`lab4_tb.sv` - Testbench for verification of module.
- constraints folder includes `lab4_comb.xdc` - which maps input and output signals on FPGA hardware avaliable in lab
- docs folder includes circuit design drawn using draw.io software

### Logic Equations:
```
based on truth table and k-maps devised following equations are derived 
r = (a[0] & a[1]) | ((~(b[0])) & (~(b[1]))) | (a[0] & (~(b[1]))) | ((~(b[0])) & a[1]) | (a[1] & (~(b[1])));
g = ((~(a[0])) & b[1]) | ((~(a[1])) & b[0]) | (b[0] & b[1]) | ((~(a[1])) & b[1]) | ((~(a[0])) & (~(a[1])));
bl = ((~(a[0])) & b[0]) | (a[0] & (~(b[0]))) | (a[1] & (~(b[1]))) | ((~(a[1])) & b[1]);
```


