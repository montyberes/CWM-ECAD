//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
	);

	parameter CLK_PERIOD = 10;
	reg err;
	reg rst;
	reg clk;
	reg button;
	reg [2:0] prev_throw;
	wire [2:0] throw;

	initial
	begin
	  clk=1'b0;
    	forever #(CLK_PERIOD/2) clk=~clk;
	end

	initial begin
	  prev_throw=3'b000;
	  err=0;
	  button=0;
	  rst =0;
	//prev_throw=throw;
	  #5 
	  	
	  rst=0;
	  button=1;
	  if (throw!=3'b001) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	  end 
	  else begin
	   err = err;
	  end
	prev_throw=throw;
	  #5 
	  rst=0;
	  button=1;	
	if (throw!=3'b010) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	  end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	  #5 
	  rst=0;
	  button=1;
	   if (throw!=3'b011) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button,   throw, prev_throw);
	  err =err+1;
	  end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	  #5 
	 rst=0;
	  button=1;
	if (throw!=3'b100) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	#5 
	 rst=0;
	  button=1;
	if (throw!=3'b100) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	#5 
	 rst=0;
	  button=1;
	if (throw!=3'b101) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, 		button, throw, prev_throw);
	  err =err+1;
	  end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	#5 
	 rst=0;
	  button=1;
	if (throw!=3'b110) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	#5 
	 rst=0;
	  button=1;
	if (throw!=3'b001) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	end 
	  else begin
	   err = err;
	  end
prev_throw=throw;
	#5 
	 rst=0;
	  button=1;
	if (throw!=3'b010) begin
	     $display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =err+1;
	end 
	  else begin
	   err = err;
	  end
	end
	
	
initial begin
        #50
        if (err==0)
          $display("***TEST PASSED! :) ***");
        $finish;
      end

dice top(
    //Todo: add ports 
	.clk (clk),
	.rst (rst),
	.button (button),
	.throw (throw)
);

endmodule


