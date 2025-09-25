# Notes - Foundation of Switching Theory and Logic Design

# Number Systems and Codes

###### A Review of the Decimal System

123
1 * 10$^{2}$ + 2 * 10$^{1}$ + 3 * 10$^{0}$
100 + 20 + 3

123.456
1 * 10${^2}$ + 2 * 10$^{1}$ + 3 * 10$^{0}$ + 4 * 10$^{-1}$ + 5 * 10$^{-2}$ + 6 * 10$^{-3}$
100 + 20 + 3 + 0.4 + 0.05 + 0.006 

###### Binary Numbering System
Most modern digital systems operate using binary logic.
Digital system represents values by two voltage levels (usually 0v to +5v)
Two levels can represent exactly two different values, 0 and 1.
0 and 1 correspon to two digits used by the binary numbering system.

###### Binary to Decimal Conversion
Binary number system works just like the decimal numbering system, with two expceptions: binary allows the digits 0 and 1 (rather than 0-9) and uses powers of two rather than powers of 10.
For each "1" in the binary string, add 2^n where "n" is the bit position in the binary string (0 to n-1 for n bit binary string).

Binary No.      1010
bit * 2$^{n}$   1 * 2${^3}$ + 0 * 2$^{2}$ + 1 * 2$^{1}$ + 0 * 2$^{0}$
Decimal Value   8           0           2           0
Decimal Number  8 + 0 + 2 + 0 = 10

Summarized:     1 * 2$^{3}$ + 0 * 2$^{2}$ + 1 * 2$^{1}$ + 0 * 2${^0}$ = 8 + 0 + 2 + 0 = 10

###### Decimal to Binary Conversion

1. Divide the decimal number by 2 producing a dividend and a remainder. This number is the LSB.
2. Again divide the dividend obtained above by 2. This produces another dividend and remaineder. The remainder is the next digit of the binary number.
3. Continue the process until the dividend becomes 0. The remaineder obtained in the final division is the MSB.

19
Division    Dividend    Remainder
19/2        9           1
9/2         4           1
4/2         2           0
2/2         1           0
1/2         0           1

Decimal Number 19 = Binary Number 10011

###### Binary Formats

1. Rightmost bit in a binary number is bit position zero.
2. Each bit to the left is given the next successive bit number.

8-bit binary value
X$_{7}$ X$_{6}$ X$_{5}$ X$_{4}$ X$_{3}$ X$_{2}$ X$_{1}$ X$_{0}$

(Little Endian)
Bit Zero = LSB (Least Significant Bit)
High Order Bit = MSB (Most Significant Bit)

###### Data Organization
Pure mathematics values may take an arbitrary number of bits but digital systems generally work with some specific number of bits.
    
Bits
One bit, smallest unit of data on a binary computer or digital system.

Nibbles
Four bits, can represent BCD (Binary Coded Decial) or hexadecimal numbers.

Bytes
Two nibbles or eight bits, can represent letters, numbers, and symbols.

Words
Two bytes, four nibbles or sixteen bits. 2$^{16}$ 0 - 65,535 or -32,768 - 32,767.
Unsigned numeric values are represented by the binary value corresponding to the bits in the word. Signed numeric values use the Two's complement form for numeric values.

Double Words
Two words, four bytes, eight nibbles, or thirty-two bits.
    
Quad Words
Two double-words, four words, eight bytes, sixteen nibbles, or sixty-four bits.

Octa Word
Two quad words, four double words, eight words, sixteen bytes, thirty-two nibbles, one-hundred twenty eight bits 

###### Octal Numbering System
The octal numbering system uses base 8 instead of base 10 or base 2. Made up of 8 digits, 0 - 7.

###### Octal to Decimal
Conversion is the same as binary to decimal, except instead of powers of 2, we use powers of 8.

172 octal to decimal.

1 * 8$^{2}$ + 7 * 8$^{1}$ + 2 * 8$^{0}$
1 * 64 + 7 * 8 + 2 * 1
122$_{10}$

###### Decimal to Octal
Conversion is the same as decimal to binary, except instead of dividing by 2, we divide by 8.

122 decimal to octal.

Division    Dividend    Remainder
122/8       15          2
15/8        1           7
1/8         0           1

172$_{8}$

###### Octal to Binary
3-bit combinations concatenated together.

Octal       Binary
1           001
2           010
3           011
4           100
5           101
6           110
7           111

777         111 111 111
472         100 111 010

###### Binary to Octal
Break binary into 3-bit groups if able and convert each group
to an octal digit.

111111111   111 111 111 777
100111010   100 111 010 472

###### Hexadecimal Numbering System
Most common sysytem representing raw computer data. 4 bit representation. Base 16 0-9 and A B C D E F.

###### Hexadecimal to Decimal
Converting hex to decimal is same as converting binary to decimal, instead of poewrs of 2, we use powers of 16.

15E
1 * 16$^{2}$ + 5 * 16$^{1}$ + E * 16$^{0}$
1 * 256 + 5 * 16 + 14 * 1
350$_{10}$

###### Decimal to Hexadecimal
Converting decimal to hex is same as decimal to binary. Instead of divide by 2, we divide by 16.

350 to hex

Division    Dividend    Remainder
350/16      21          14
21/16       1           5
1/16        0           1

15E

###### Hexadecimal to Binary
Compute 4 bit binary pattern and concatenate together.

AE

A = 1010
E = 1110

10101110

###### Binary to Hexadecimal
Break into 4 bit groups and convert to hex

11000100101
0110 0010 0101
625$_{16}$

###### Hexadecimal to Octal
###### Octal to Hexadecimal

###### Range of Number Representation
The range of numbers that can be represented is determined by the number of digits (or bits in binary) used to represent a number.

Highest decimal number represented by 2 digits = 99
99 = 100 - 1 = 10$^{2}$ - 1
The power of 10 in (10$^{2}$ - 1) indicates that this is a 2 digit representation.

The highest 2-digit decimal number = 10$^{2}$ - 1
The lowest 2-digit decimal number = 00
Range is 00 to 10$^{2}$ - 1 or 00 - 99

We can conclude that for n-digit representation
Range of decimal numbers = 0 to 10$^{n}$ - 1
Highest decimal number = 10$^{n}$ - 1

Generalization
Total distinct numbers that can be represented = r$^{n}$
Higest decimal Number = r$^{n}$ - 1
Range of Numbers = r$^{n}$ - 1

Where 
r = base or radix of number system
n = digits used for representation 

Binary Arithmetic
Addition
Subraction
Multiplication
Division
Negative Numbers and Their Arithmetic
1s Complement
2s Complement
Subtraction using 1s Complement
Subratction using 2s Complement
Signed Binary Representation
Arithmetic Overflow
9s Complement
10s Complement
r's Complement
(r-1)'s Complement
Rules for Subtraction using (r-1)'s Complement
Binary Coded Decimal
Binary Coded Decimal Arithmetic
Codes
Weighted Binary Codes
Self Complementing BCD Codes
Non-Weighted Codes
Gray Codes (Unit Distance Code or Reflective Code)
Binary to Gray Conversion
Error Detecting Codes
LRC (Longitudinal Redundancy Check)
CRC (Cyclic Redundancy Check)
Checksums
Burst Error Detection
Error Correcting Codes
Block Codes
Hamming Distance
Minimum Distance
Redudant Bits
Hamming Code
Positioning the Redundant Bits
Calculating the r Values
Error Detection and Correction
Cyclic Codes
Alphanumeric Codes
ASCII Alphanumeric Code