# Seven-Segment Display Driver using K-Maps

## Overview
This project involves designing a driver circuit for a seven-segment display using combinational circuit design principles and Karnaugh Maps (K-Maps). The implementation is done using SystemVerilog and includes both structural and behavioral modeling approaches. The circuit allows a user to display hexadecimal characters (0-F) on a selected seven-segment display from the eight available on the Nexys-A7 FPGA board.

## Files Structure
- RTL - `lab_5.sv` - Structural Verilog code implementing the circuit using minimized Boolean expressions from K-Maps.
- RTL - `lab5_beh.sv` - Behavioral Verilog code implementing the seven-segment decoder.
- Bench - `lab_5_tb.sv` - Testbench for verifying the functionality of the design through simulation.
- Docs - `lab5.drawio` - Circuit diagram illustrating the logical structure and connections.


## Truth Tables

| num[3] | num[2] | num[1] | num[0] | SegA | SegB | SegC | SegD | SegE | SegF | SegG |
|--------|--------|--------|--------|------|------|------|------|------|------|------|
| 0      | 0      | 0      | 0      | 0    | 0    | 0    | 0    | 0    | 0    | 1    |
| 0      | 0      | 0      | 1      | 1    | 0    | 0    | 1    | 1    | 1    | 1    |
| 0      | 0      | 1      | 0      | 0    | 0    | 1    | 0    | 0    | 1    | 0    |
| 0      | 0      | 1      | 1      | 0    | 0    | 0    | 0    | 1    | 1    | 0    |
| 0      | 1      | 0      | 0      | 1    | 0    | 0    | 1    | 1    | 0    | 0    |
| 0      | 1      | 0      | 1      | 0    | 1    | 0    | 0    | 1    | 0    | 0    |
| 0      | 1      | 1      | 0      | 0    | 1    | 0    | 0    | 0    | 0    | 0    |
| 0      | 1      | 1      | 1      | 0    | 0    | 0    | 1    | 1    | 1    | 1    |
| 1      | 0      | 0      | 0      | 0    | 0    | 0    | 0    | 0    | 0    | 0    |
| 1      | 0      | 0      | 1      | 0    | 0    | 0    | 0    | 1    | 0    | 0    |
| 1      | 0      | 1      | 0      | 0    | 0    | 0    | 1    | 0    | 0    | 0    |
| 1      | 0      | 1      | 1      | 1    | 1    | 0    | 0    | 0    | 0    | 0    |
| 1      | 1      | 0      | 0      | 0    | 1    | 1    | 0    | 0    | 0    | 1    |
| 1      | 1      | 0      | 1      | 1    | 0    | 0    | 0    | 0    | 1    | 0    |
| 1      | 1      | 1      | 0      | 0    | 1    | 1    | 0    | 0    | 0    | 0    |
| 1      | 1      | 1      | 1      | 0    | 1    | 1    | 1    | 0    | 0    | 0    |


| sel[2] | sel[1] | sel[0] | seg0 | seg1 | seg2 | seg3 | seg4 | seg5 | seg6 | seg7 |
|--------|--------|--------|------|------|------|------|------|------|------|------|
| 0      | 0      | 0      | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    |
| 0      | 0      | 1      | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    |
| 0      | 1      | 0      | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    |
| 0      | 1      | 1      | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    |
| 1      | 0      | 0      | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    |
| 1      | 0      | 1      | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    |
| 1      | 1      | 0      | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    |
| 1      | 1      | 1      | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    |

## Operation
1. The user provides a 4-bit binary number (`num[3:0]`) representing a hexadecimal digit (0-F).
2. The user selects one of the eight seven-segment displays using a 3-bit `sel[2:0]` input.
3. The circuit decodes the input number into the corresponding seven-segment display pattern.
4. The selected display lights up accordingly, while the others remain inactive.

## Implementation Details
### Structural Code (`lab_5.sv`)
- Uses K-Map optimized Boolean equations for segment control.

### Behavioral Code (`lab5_beh.sv`)
- Uses a `case` statement to map hexadecimal values to seven-segment outputs.

### Testbench (`lab_5_tb.sv`)
- Stimulates the circuit with various inputs.
- Checks expected seven-segment outputs.
- Simulated using QuestaSim.





