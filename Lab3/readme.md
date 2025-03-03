# Experiment 3 - Combinational Circuit Simulation

## Circuit Description
This project contains the SystemVerilog code for structural modeling and a testbench for simulating the following combinational circuit:

## Truth Table
The expected truth table for the given circuit is:

| a   | b   | c   | y   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 1   |
| 0   | 1   | 0   | 0   |
| 0   | 1   | 1   | 1   |
| 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 1   |
| 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 1   |

## SystemVerilog Code (RTL)
### Module
The module `lab3tkmd` implements the structural behavior of the combinational circuit with three inputs **a**, **b**, and **c**, producing output **y**.

## Test Bench Code
The testbench `lab3tk_tb` initializes three input signals and one output signal. The `lab3tkmd` module is instantiated, and all possible input combinations are applied with a time delay.

## Expected Results
- The circuit should implement the Boolean equation `y = (a · b) + c`. 


