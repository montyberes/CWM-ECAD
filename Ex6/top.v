//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 
// Student Name:
// Date: 
//
//
//  Description: In this exercise, you need to design a multiplexer between a dice and traffic 
//  lights, where the output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | dice
//   1  | traffic lights
//
//  inputs:
//           rst, clk, button,sel
//
//  outputs:
//           result[2:0]
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module dice_or_lights(input rst, input clk, input button, input sel, output [2:0]result);

//top_lights a[2:0](clk, red, amber, green)
wire red;
wire green;
wire blue;
wire [2:0]throw;
wire [2:0]colour;
assign colour = {red, green, blue};


dice top_dice(button,clk,rst,throw);
lights top_lights(clk,colour[2],colour[1],colour[0]);

assign result=(sel==0)?throw:colour;

endmodule




//top_mux (throw,colour,sel,result);



//endmodule
