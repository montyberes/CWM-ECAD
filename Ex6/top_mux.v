//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //Todo: define inputs here
	input [2:0]a,
	input [2:0]b,
	input sel,
	output out
    );
  assign out=(sel==0)?a:b;
endmodule


	
    	//wire[1:0]out;
    //Todo: define registers and wires here
	//reg out;
	//reg [5:0]t;
	

	//always @(posedge clk)
	//begin
	        //begin

	//if (sel==0)
	 // out<=a;
	//else
	 // out<=b;
	//end

//assign out =(sel==0)?a:b;
	
	 //if(sel==0)
	  //out=a;
	 //else
	  //out=b;
	//end

	//assign out=((sel==0)&&(t==5))?A:
	//	   ((sel==1)&&(t==5))?B:
	//	 out;    

