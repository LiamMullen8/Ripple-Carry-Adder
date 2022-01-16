/***************************************\
| Auther: Liam Mullen
| Email: liammull@buffalo.edu
| Course: CSE341 – Computer Organization
| Assignment: Project 2
| Date Created : 11/19/2021
| Date last updated : 11/26/2021
| Name of program : Ripple-Carry Adder
| Summary of Assignment Purpose: Addition of 2 32-bit binary numbers
| Description of Program Purpose: Implement 32-bit Ripple-Carry Adder
| Functions and Modules in this file: ripple_adder
| Additional Required Files: full_adder, half_adder, read_file
\***************************************/

`include "full_adder.sv"

module ripple_adder(x, y, c_in, s, c_out);
  input [31:0]x;
  input [31:0]y;
  input c_in;
  
  output [31:0]s;
  output c_out;
  
  wire [31:0]c;
  
  full_adder FA1(x[0], y[0], c_in, s[0], c[1]);
  full_adder FA2(x[1], y[1], c[1], s[1], c[2]);
  full_adder FA3(x[2], y[2], c[2], s[2], c[3]);
  full_adder FA4(x[3], y[3], c[3], s[3], c[4]);

  full_adder FA5(x[4], y[4], c[4], s[4], c[5]);
  full_adder FA6(x[5], y[5], c[5], s[5], c[6]);
  full_adder FA7(x[6], y[6], c[6], s[6], c[7]);
  full_adder FA8(x[7], y[7], c[7], s[7], c[8]);

  full_adder FA9(x[8], y[8], c[8], s[8], c[9]);
  full_adder FA10(x[9], y[9], c[9], s[9], c[10]);
  full_adder FA11(x[10], y[10], c[10], s[10], c[11]);
  full_adder FA12(x[11], y[11], c[11], s[11], c[12]);

  full_adder FA13(x[12], y[12], c[12], s[12], c[13]);
  full_adder FA14(x[13], y[13], c[13], s[13], c[14]);
  full_adder FA15(x[14], y[14], c[14], s[14], c[15]);
  full_adder FA16(x[15], y[15], c[15], s[15], c[16]);

  full_adder FA17(x[16], y[16], c[16], s[16], c[17]);
  full_adder FA18(x[17], y[17], c[17], s[17], c[18]);
  full_adder FA19(x[18], y[18], c[18], s[18], c[19]);
  full_adder FA20(x[19], y[19], c[19], s[19], c[20]);

  full_adder FA21(x[20], y[20], c[20], s[20], c[21]);
  full_adder FA22(x[21], y[21], c[21], s[21], c[22]);
  full_adder FA23(x[22], y[22], c[22], s[22], c[23]);
  full_adder FA24(x[23], y[23], c[23], s[23], c[24]);

  full_adder FA25(x[24], y[24], c[24], s[24], c[25]);
  full_adder FA26(x[25], y[25], c[25], s[25], c[26]);
  full_adder FA27(x[26], y[26], c[26], s[26], c[27]);
  full_adder FA28(x[27], y[27], c[27], s[27], c[28]);

  full_adder FA29(x[28], y[28], c[28], s[28], c[29]);
  full_adder FA30(x[29], y[29], c[29], s[29], c[30]);
  full_adder FA31(x[30], y[30], c[30], s[30], c[31]);
  full_adder FA32(x[31], y[31], c[31], s[31], c_out);

  
endmodule