//------------------------------------------------
// Adapted from:
// David_Harris@hmc.edu 23 October 2005
// Updated to SystemVerilog dmh 12 November 2010
// External memories used by MIPS single-cycle
// processor
//------------------------------------------------
/***************************************\
| Function/Module Name: read_file
| Author: Liam Mullen
| Date Created : 11/21/2021
| Date last updated : 11/29/2021
| Summary of Purpose: Read in binary numbers from .dat file for Ripple-Carry operands
| Input/Stored Value Requirements: .dat file containing 1 pair of 32-bit numbers per row and carry in bit
| Values Stored/Returned: 2-D Array with pairs of 32-bit binary numbers
\**********************************/
  

module read_file( a, x, y, c);

  input  [4:0]  a; //address for the register
  output [31:0] x; //x register being returned with value loaded
  output [31:0] y; //y register being returned with value loaded
  output		c; //carry in bit for x operand

  reg [31:0] RAM[31:0][2:0]; //array with 32 rows, 3 columns: 32-bit, 32-bit, 1-bit

  initial
    begin
      $readmemb("input_file.dat",RAM); // initialize memory
    end

//  word aligned 
  assign x = RAM[a][0];
  assign y = RAM[a][1];
  assign c = RAM[a][2];
  
  
endmodule

