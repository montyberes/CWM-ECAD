//////////////////////////////////////////////////////////////////////////////////
// Exercise #1 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design a logical unit, where the  
//  output acts according to the following truth table:
//
//  a | b | out
// -----------------
//  0 | 0 | func[0]
//  0 | 1 | func [1]
//  1 | 0 | func [2]
//  1 | 1 | func [3]
//
//  inputs:
//           a, b, func[3:0]
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module logicalunit(
    input a,
    input b,
    input [3:0] func,
    output out
    );
    
    wire   out;
	//ab = {a,b}
    assign out=((a==0) && (b==0))?func[0]:
		 ((a==0) && (b==1))?func[1]:
		 ((a==1) && (b==0))?func[2]:
		 func[3];
endmodule
	//assign out = (a&&b)?func
	//if (a ==0 && b==0)
	//  assign out = func[0]
	//else
 	//  if (a==0 && b==0)
	//    assign out = func[1]
	 // else
	 //   if (a==1 && b==0)
	  //	assign out = func[2]
	   // else 
		//assign out = func[3]
	

	
	
    //assign out = (ab==2'b00)? func[0]:
	//(ab ==2'b01)? func[1]:
	//(ab==2'b10)? func[2]:
	//func[3]



	
         
      //Todo: add you logic here


