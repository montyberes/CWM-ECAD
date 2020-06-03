//////////////////////////////////////////////////////////////////////////////////
// Exercise #3 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an up / down counter, where 
//  if the rst=1, the counter should be set to zero. If enable=0, the value
//  should stay constant. If direction=1, the counter should count up every
//  clock cycle, otherwise it should count down.
//  Wrap-around values are allowed.
//
//  inputs:
//           clk, rst, enable, direction
//
//  outputs:
//           counter_out[7:0]
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module counter(
    //Todo: add ports 
	input clk,
	input rst,
	input enable,
	input direction,
	output reg [7:0]counter_out
    );

	//assign counter_out=counter_out_prev;
	always@(posedge clk)
	if (rst==1) begin
	   counter_out=0;
	end
	else  begin
   		counter_out<=(enable==0)?counter_out:(direction==1)?counter_out+1:counter_out - 1; 		end	
	
endmodule
 // if(rst)
   //counter_out <= 8'b00000000;
  //else
  // if(enable==0)
   // counter<=counter;
   //else
    // if(direction==1'b1)
     //else 
	//counter<counter -8'b00000001;


      

