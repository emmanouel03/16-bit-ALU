# 16-bit Arithmetic Logic Unit (ALU)
A **16-bit Arithmetic Logic Unit (ALU)** in **VHDL** supporting arithmetic and logical operations between two 16-bit numbers.

## Operations
| Command | Description               | Operation   | Operation code |
| :------:| :-----------------------: | :----------:| :-------------:|
| ADD     | Addition                  | O=I1+I2     | 000            |
| SUB     | Subtraction               | O=I1-I2     | 001            |
| AND     | AND (bit by bit)          | O=I1 AND I2 | 010            |
| OR      | OR (bit by bit)           | O=I1 OR I2  | 011            |
| GEQ     | Greater Equal             | O=(I>=0)    | 100            |
| NOT     | NOT (bit by bit)          | O=(I1==0)   | 101            |
| XOR     | Exclusive OR (bit by bit) | O=I1 XOR I2 | 110            |
| NOR     | Negative OR (bit by bit)  | O=I1 NOR I2 | 111            |

## How to Run
1. Create a new project in **Intel Quartus Prime** with the name `ALU16bit`.
2. Create a new VHDL file and copy the code of `ALU16bit.vhd` inside.
3. Add all the components to the project.
4. Compile `ALU16bit.vhd` and create a new **University Program VWF**.
5. Adjust the input values and run the functional simulation.

## Author
- **Emmanuel Vamvatsoulis** - Student at the Department of Informatics, **AUEB**