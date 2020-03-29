
# RISCQ
Designed a basic computer that called **RISCQ**. **RISCQ** has registers, two memories, arithmetic and logic unit, control unit and bus system.


**Contents**

 1.  [Registers](https://github.com/derectus/risc-qarch#registers)
 2.  [Memories](https://github.com/derectus/risc-qarch#memories)
 3. [Common Bus System](https://github.com/derectus/risc-qarch#common-bus-system)
 4. [Arithmetic and Logic Unit](https://github.com/derectus/risc-qarch#arithmetic-and-logic-unit)
 5. [Instruction set and micro-operations table](https://github.com/derectus/risc-qarch#instruction-set-and-micro-operations-table)
	 - [Instruction Set](https://github.com/derectus/risc-qarch#instruction-set)
	 - [Control functions and Microoperations](https://github.com/derectus/risc-qarch#control-functions-and-microoperations)
 6. [Control Unit](https://github.com/derectus/risc-qarch#control-unit)
	 - [Instructions and Sequences Counter](https://github.com/derectus/risc-qarch#instructions-and-sequences-counter--inputs)
	 -  [ALU Operations](https://github.com/derectus/risc-qarch#alu-operations)
	 -  [BUS Load/Read](https://github.com/derectus/risc-qarch#bus-loadread)
	 - [Register Operations](https://github.com/derectus/risc-qarch#register-operations)
	 - [Program Counter Load Operation](https://github.com/derectus/risc-qarch#program-counter-load-operation)
	 - [Other Operations (Instructions, program counter and etc.)](https://github.com/derectus/risc-qarch#other-operations-instructions-program-counter-and-etc)
 7. [Combined all components](https://github.com/derectus/risc-qarch#combined-all-components)
 8. [Compling and Running](https://github.com/derectus/risc-qarch#compling-and-running)



## Registers
**RISCQ** has 9 registers which are Address Register, Program Counter, Input Register, Output
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
In RISCQ there is two memories which are instruction and data memories. Each has read
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

##  Instruction set and micro-operations table 

### Instruction Set
![Instruction Set](/img/instructions.png)

### Control functions and Microoperations
![Instruction Set](/img/micop.png)

## Control Unit
Control unit processes instructions to direct the micro-operations for computer's memories,
registers and arithmetic/logic unit. Control unit consists of decoders and a number of control logic
gates. It should produce operation signals and time periods for fetching, decoding and executing the instructions.

 **Control Unit Figure;**

![Control Unit Figure](/img/cu-fig.png)

### Instructions and Sequences Counter & Inputs
![Control Unit Counters](/img/CU-I.PNG)

 - ***Also Sequences Counter Clear***
 
 ![Control Unit SC](/img/CU-III.PNG)

### ALU Operations
![Control Unit ALU OPERATIONS](/img/cu-alu.png)

### BUS Load/Read 
 - LOAD
 
  ![Control Unit BUS LOAD OPERATIONS](/img/cu-bus-load.png)
 - READ
 
  ![Control Unit  BUS READ  OPERATIONS](/img/cu-bus-read.png)
  
### Register Operations
![Control Unit  OPERATIONS](/img/cu-register.png )

### Program Counter Load Operation
![Control Unit PC](/img/CU-V.PNG)

### Other Operations (Instructions, program counter and etc.)
 1. 
 
 ![Control Unit ](/img/CU-VI.PNG)
 
 2.
 
 ![Control Unit ](/img/CU-VII.PNG)

## Combined all components
***Theoretically Figured***

![RISCQ ](/img/all-fig.png)

***When all components combined, system looks like that;***

![RISCQ ](/img/ALL.PNG)

## Compling and Running 

#### Sample 
![RISCQ Sample ](/img/sample.png)

![RISCQ Sample 1](/img/sample2.png)



