/* ***************************************************************\
| Name of program : 32-bit Ripple-Carry Adder testbench
| Author: Liam Mullen
| Date Created : 11/19/2021
| Date last updated : 12/2/2021
| Function : Perform addition on two 32 bit numbers using Ripple Carry Adder
| Method : Iterate through input_file.dat passing each row to the Adder. The testbench is monitoring all variables and will update when any bit changes.Thus, the final result of each pair of inputs can be seen in the log at the final print of each number of a (first column in log)
\****************************************************************/
`include "read_file.sv"
`timescale 1ns/1ns

module ripple_adder_tb;
  
  // 32bit binary numbers read from .dat file
  wire [31:0]x;
  wire [31:0]y;
  
  // sum bit for each full adder in the module
  wire [31:0]s;
  
  // overall carry-in bit
  wire c_in;
  
  // overall carry out bit
  wire c_out;
  
  //index for incrementor in RAM
  reg [4:0] a;
  

  
  initial
    begin      
      // start index for location in RAM
      a=0;
    end
  

  // read binary input from .dat file
  read_file dut2(.a(a),.x(x),.y(y), .c(c_in));
  
  // instantiate adder module
  ripple_adder dut(.x(x), .y(y), .c_in(c_in), .s(s), .c_out(c_out));
  
  
  always
    begin
      //sum of average gate delays in ripple adder for each pair of inputs
      //a increments to next line in .dat file
      #1728 a = a+1;
    end  
  
  initial // waveform generation code
    begin
      $dumpfile("PROJECT2.vcd");
      $dumpvars;
    end
  
  initial
  	begin // create the instructions for the simulator to output observations to the log
      $display("_____________________________________________________________________________________________________________________");
      $monitor("a: %d X: %b Y: %b C_IN: %b | S: %b Cout: %b", a, x, y, c_in, s, c_out);
  	end
  
  
  initial #27648 $finish; //1728 time units * 16 test cases
           
endmodule
