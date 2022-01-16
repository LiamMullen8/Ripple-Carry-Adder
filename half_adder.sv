/********************************************************\
| Function/Module Name: half_adder
| Author: Liam Mullen
| Date Created : 11/19/2021
| Date last updated : 11/29/2021
| Summary of Purpose: Addition of 2 1-bit binary numbers
| Input/Stored Value Requirements: 2 1-bit binary numbers
| Values Stored/Returned: Sum of numbers, 1-bit Carry bit
\********************************************************/

`timescale 1ns/1ns

module half_adder(x, y, s, c_out);
  input x;
  input y;
  
  output s;
  output c_out;
  
  xor #12 x1(s, x, y);
  and #10 a1(c_out, x,y);
  
endmodule