ECE281_Lab2
===========

Adder Circuit

### Prelab

The Prelab objective was to create a functional 2 bit adder capable of later being formed into a fully functional
8 bit ripple-carry adder.

Designing the 2 bit adder required looking ahead to the fully implemented design. The 8 bit adder can be most easily be
constructed as a VHDL structural circuit from four of the 2 bit components. Therefor, the 2 bit adder requires three
inputs, A and B, which will be the data bits, and Cin, carry in which indicates if a bit is carried into the adder. The
outputs would then be S, the sum result of the two bits in their same order of magnitude, and Cout, the carry out which
indicates if adding the bits produced a carry. The signals were produced according to the following truth table:

|Cin|A|B|S|Cout|
|:-:|:-:|:-:|:-:|:-:|
|0|0|0|0|0|
|0|0|1|1|0|
|0|1|0|1|0|
|0|1|1|0|1|
|1|0|0|1|0|
|1|0|1|0|1|
|1|1|0|0|1|
|1|1|1|1|1|

Analyzing the truth table yielded the following equaitons and schematic:

    S = A xor B xor C
    Cout = (A and B) or (Cin and (A or B))


![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Full_Adder_Schematic.jpg "Adder Schematic")

The behavioral VHDL model and a corresponding testbench were created from the equations and schematic above and the signals
provided in the truth table were tested and the output is shown below. The bottom row corresponds with the above truth
table lines with Cin as the most significant bit and B as the least significant. The top and middle rows, representing
S and Cout respectively, were tested by matching the expected truth table outputs and the three input bits to the 
expected values in the truth table above. The signals and truth table matched, providing a good level of confidence for
the future success of the single bit adder in the fully functional design.

![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Full_Adder_Signal.jpg "Adder TestBench Signal")
