//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb( );

parameter CLK_PERIOD = 10;

reg rst;
reg clk;
reg button;
reg sel;
wire [2:0]result;

	//parameter CLK_PERIOD = 10;
	//reg err;
	//reg rst;
	//reg clk;
	//reg button;
	//reg [2:0] prev_throw;
	//wire [2:0] throw;

	initial
	begin
	  clk=1'b0;
    	forever #(CLK_PERIOD/2) clk=~clk;
	end

	initial begin
	//#5
	forever begin
	prev_throw=throw;
	#5
	//if (button==1) begin
	//prev_throw<=(prev_throw<3'h6)?prev_throw+1:3'h1;
	if ((button==1)&(prev_throw!=throw))begin
	$display("***TEST FAILED! rst==%d, button==%d, throw==%d, prev_throw==%d***", rst, button, throw, prev_throw);
	  err =1;
	end
	else begin
	err=0;
	end
	end
end
	

initial begin
	#5
	prev_throw=3'b000;
	err=0;
	button=1;
	rst=1;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=1;
	rst=0;
	#5
	button=0;
	rst=0;
	
	end
	
	
	
initial begin
        #200
        if (err==0)
          $display("***TEST PASSED! :) ***");
        $finish;
      end

dice top_dice(
    //Todo: add ports 
	.sel(sel)
	.clk (clk),
	.rst (rst),
	.button (button),
	.result (resu;t)
);

endmodule



//initial
//	begin
//	  clk=1'b0;
  //  	forever #(CLK_PERIOD/2) clk=~clk;
	//end


//initial begin
//	err=0;
  //      #200
   ///    if (err==0) begin
  //        $display("***TEST PASSED! :) ***");
   //     $finish;
//	end
//	else begin
//	 $display("Fail");
  //    end 
//	end

lights top_lights(
   //Todo: add ports 
	.clk (clk),
	.red (red),
	.green (green),
	.amber (amber)
);

dice top_dice( 
.button (button),
.clk (clk),
.rst (rst),
.result (result));

mux top_mux( 
.throw (throw),
.colour (colour),
.sel (sel),
.result (result));

endmodule
	 


