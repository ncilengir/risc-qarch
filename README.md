# riscQarch
Designed a basic computer that called **riscq**. **riscq** has registers, two memories, arithmetic and logic unit, control unit and bus system.

## Registers
**riscq** has 9 registers which are Address Register, Program Counter, Input Register, Output
Register, Instruction Register and 4 general purpose registers.


|  Register Symbol 	|   Register name	|   Number of bits	|   Function	|   
|---	|---	|---	|---	|
|   AR	|   Address Register	|   5	|  Holds address for data memory. It can be cleared with related control signal. 	| 
|   PC	|   Program Counter	|   5	|   Holds address of instruction. It can be cleared and increase by one with related control signals.	|
|   IR	|   Instruction Register	|   11	|   Holds instruction code	|
|   InpR	|   Input Register	|   4	|   Holds input data	|
|   OutR	|   Output Register	|   4	|   Holds output data	|
|   R0, R1, R2, R3	|   General Purposed Registers	|   4	|   Holds operands and other data	|


## Memories
In DEUARC there is two memories which are instruction and data memories. Each has read
enable and data inputs. Data memory has also write enable input.
1. Instruction Memory (32x11)
2. Data Memory (32x4)

![Memories](/img/memories.png)

## Common Bus System
Common bus system will be responsible for data flow and provide data transfer between register
and/or memories.

**So after all; Memories and Registers in the BUS system looks like that**;

![Common Bus System](/img/BUS.PNG)

## Arithmetic and Logic Unit
In ALU, arithmetic and logical operations will be held. Its block diagram like that;
 
![Arithmetic and Logic Unit Block Diagram](/img/alu-figure-1.png)

***The ALU supports following operations;***

![Arithmetic and Logic Unit](/img/alu-figure.png)

**Actually the ALU configrated like that;**

![Arithmetic and Logic Unit](/img/ALU.PNG)

##  riscQarch instruction set and microoperations table 

### Instruction Set
![Instruction Set](/img/instructions.png)

### Control functions and Microoperations
![Instruction Set](/img/micop.png)

## Control Unit
Control unit processes instructions to direct the micro-operations for computer's memories,
registers and arithmetic/logic unit. Control unit consists of decoders and a number of control logic
gates. It should produce operation signals and time periods for fetching, decoding and executing the instructions.



