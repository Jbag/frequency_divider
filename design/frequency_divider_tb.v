`timescale		1ns/1ns 

module		frequency_divider_tb;

	reg		clk,rst_n;
	
	wire	clk_out;
	
initial
	begin
		clk	=	0;
		rst_n	=	0;
		#200
		rst_n	=	1;
	end

always	#10		clk	=	~clk;

frequency_divider		#(	.N(5)	)			//带参数例化
					frequency_divider_inst(
	.clk					(clk),
	.rst_n					(rst_n),
	.clk_out				(clk_out)
);

endmodule
