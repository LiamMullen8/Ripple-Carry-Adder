/********************************************************************\
| Function/Module Name: full_adder
| Author: Liam Mullen
| Date Created : 11/19/2021
| Date last updated : 11/28/2021
| Summary of Purpose: Addition of 2 1-bit numbers including 1-bit carry
| Input/Stored Value Requirements: 2 1-bit binary numbers
| Values Stored/Returned: Sum of numbers, 1-bit Carry bit
\********************************************************************/

`include "half_adder.sv"

module full_adder(x, y, c_in, s, c_out);
  input x;
  input y;
  input c_in;
  
  output s;
  output c_out;
  
  wire HA1_s;
  wire HA1_c_out;
  wire HA2_c_out;
  
  half_adder HA1(x, y, HA1_s, HA1_c_out);
  half_adder HA2(HA1_s, c_in, s, HA2_c_out);
  
  or #10 o1(c_out, HA1_c_out, HA2_c_out);
  
  
endmodule