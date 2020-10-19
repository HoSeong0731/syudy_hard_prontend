`timescale 1ns/100ps

module tb_dff_rs;
	
	reg	tb_clk, tb_set_n, tb_reset_n, tb_d;
	wire	tb_q;
	
	parameter STEP = 20; //step was 10 at first, but I guess waveform cannot capture decimal number, so changed parameter 20.
	
	_dff_rs U0_dff_rs(.clk(tb_clk), .set_n(tb_set_n), .reset_n(tb_reset_n), .d(tb_d), .q(tb_q));
	
	always #(STEP / 4) tb_clk = ~tb_clk;
	
	initial
	
	begin
		tb_clk = 1'b0; tb_set_n = 1'b0; tb_reset_n = 1'b0;
		#(STEP / 6) tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1; tb_reset_n = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1; tb_set_n = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		#10; tb_d = 1'b0; #10; tb_d = 1'b1;
		$stop;
		
	end
endmodule
