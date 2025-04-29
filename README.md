## AIM: 
To design and implement a 4-bit comparator using switch-level modeling in Verilog by constructing the circuit with PMOS and NMOS transistors and simulating it to verify the logical functionality. 
## APPARATUS REQUIRED: 
1. Visual Studio Code 
2. Icarus Verilog  
3. Gtkwave (simulation) 
4. PC 
## THEORY: 
A 4-bit magnitude comparator is a digital combinational circuit used to compare two 4-bit binary numbers, typically labeled as A (A3 A2 A1 A0) and B (B3 B2 B1 B0). The comparator determines the relative magnitude of these two numbers and produces three output signals: A > B, A = B, and A < B. The comparison is done starting from the most significant bit (MSB) to the least significant bit (LSB), giving priority to higher-order bits. If the MSBs are equal, the comparison proceeds to the next lower bit, and so on. If all bits are equal, the output A = B is high. If a bit in A is found to be greater than the corresponding bit in B before any smaller bit is found, the output A > B is high. Conversely, if a bit in A is smaller than its counterpart in B before any larger bit is found, the output A < B is high. The logic is typically implemented using XNOR gates to check for bit equality and AND-OR logic for determining greater-than or less-than conditions. 4-bit comparators are commonly used in digital systems for sorting, arithmetic operations, and control logic. 
