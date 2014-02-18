ECE281_Lab2
===========

Adder Circuit

### Prelab: 1 Bit Adder

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


![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Full_Adder_Schematic.JPG "Adder Schematic")

The schematic was then abstracted to the simple interface below:

![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Full_Adder_Interface.JPG "Adder Interface")

The behavioral VHDL model and a corresponding testbench were created from the equations and schematic above and the signals
provided in the truth table were tested and the output is shown below. The bottom row corresponds with the above truth
table lines with Cin as the most significant bit and B as the least significant. The top and middle rows, representing
S and Cout respectively, were tested by matching the expected truth table outputs and the three input bits to the 
expected values in the truth table above. The signals and truth table matched, providing a good level of confidence for
the future success of the single bit adder in the fully functional design.

![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Full_Adder_Signal.JPG "Adder TestBench Signal")

### Main Lab: 4 Bit Adder and Subtractor

#### Circuit and VHDL Design

The adder and subtractor unit was designed based on the ALU model given in the course text _Digitial Design and Computer
Architecture_ on page 249. The four bit adder would be constructed by arranging four 1 bit adders in a carry ripple 
configuration as shown below. NOTE the overflow module was not added until after the spot test. Originally the flag was
set as Carry 3.

![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Full_Adder_4Bit.JPG "4 bit adder module")

Although this adder model is known for slow processing time, the time delay would be negligible in a four
bit adder. The adder was to the be default device state while the subtractor would be added by giving a subtraction 
select signal. This signal would activate a multiplexer which would direct an inverted B signal into the 4 bit adder, 
and the high signal from the selector switch would be routed into the adder's carry in input to complete forming the 
two's complement of B and adding it to A to give the difference between the two numbers. 

![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Adder_Module_Schematic.JPG "Adder/Subtractor Schematic")

The Adder/Subtractor design called for additional components in the form of a 4 bit inverter and a 4 bit 2-1 multiplexer.
Behavioral models of these components were created, while the 4 bit carry ripple adder was created as a structural
combination of 4 of the 1 bit adders created in the prelab. All these components were combined in a separate structural
VHDL file to complete the design.

#### FPGA Build and Spot Check

To preform a spot-check of the design, it was decided that moving forward to the FPGA implementation would be most
efficient. Although moving forward to the physical implementation prior to testing with a testbench simulation does not
follow the engineering method, the fact that the FPGA can be programmed and reprogrammed at no cost negates the reason for
this traditional process as it accounts for the fact that physical circuits usually involve a far greater investment of 
resources and funds than does a testbench simulation. Additionally, a successful spot check would have, and ultimately did,
increase the general happiness and morale of the engineer involved and increase productivity.

The constraints file was created for the NEXYS 2 FPGA. The four A bits were set as the rightmost four switches with the
least significant bit as the rightmost of those switches. Conversely, the four B bits were set as the leftmost four switches
with the LSB as the rightmost of those switches. The output LEDs were set so the four rightmost LEDs represented the Sum
output with the LSB as the rightmost LED. The fifth LED from the right of the row (LD4) was set as the carry flag. The
add/subtract selector input was set to the leftmost pushbutton (BTN3).

#### Debugging

The spot check was carried out by comparing the inputs and outputs on the circuit board to handwritten binary calculations.
The specific input conditions for this test were not recorded, however, the spot testing did suggest that the design was 
successful. Furthermore, the the spot check did reveal minor problems with the human interface and usability of the FPGA
implementation. The carry flag, being directly adjacent to the sum array output often lead to erroneous readings, and 
setting the A array to the rightmost switches, and the B array to the leftmost switches, is counter-intuitive to the use of
the subtraction mechanism as the user saw the system as DIFFERENCE = -B + A, rather than the more natural DIFFERENCE = A-B.
In response the Carry flag was moved to the leftmost LED (LD7) and the A array and B array inputs were switched.

Lastly the spot test revealed revealed that the Overflow flag was acting as a carry-out flag. Because the device adds and
subtracts two's compliment number the overflow conditions are the same, when two positive or negative numbers are added and
the sum produces a number of opposite sign to the inputs which for a four bit number is any sum that is outside of the range
-8 to 7. In terms of the circuit this can be determined by comparing the MSBs of the inputs and outputs, if the two input
bits are the same and produce an opposite bit in the output an overflow has occurred. Alternatively this can be determined by
analyzing the carries form the last two adders. If the last carry is active and the second to last isn't, it indicates that
the output MSB has been switched without being reactivated by the second to last carry thus an overflow. If both carries are
active it is similar to the previous case but the output MSB has been reactivated and so the sign conventions are valid.
If the second to last carry has been activated and the last it also indicates that the MSB has been changed as the bit that
was carried over was not "carried out" again, as would be the case if the last trigger was active. Therefor the overflow 
flag for a four bit adder is *Carry3 xor Carry2*. 

#### Testbench Testing

The Testbench was intended as an exhaustive test of every possible combination, however, the designed could not figure out
how get VHDL signed number addition and subtraction to evaluate and successfully compare to the simulated circuit output,
as a result the simulated waveforms showed the correct responses while the console showed an error for every single
evaluation for values that did not match the simulation as can be seen below.

![alt text](https://raw2.github.com/IanGoodbody/ECE281_Lab2/master/Add_Sub_4Bit_Waveform.JPG "After trying different version of the code with no apparent change the designer got frustrated and gave up before he punched a hole through his monitor.")

### Conclusion

In conclusion, the single adder design was definitively successful. However, the adder/subtractor could not be tested with an
exhaustively with a testbench, and although inductive reasoning suggests that the design will work properly it cannot be proven
definitively.

#### Documentation

In an effort to solve the dilemmas with my Testbench I referenced C2C McPeek and C3C Park's github files. Unfortunately this did not
yield any solution to the problems I was having.
