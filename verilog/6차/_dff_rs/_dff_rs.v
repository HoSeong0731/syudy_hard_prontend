module _dff_rs(clk, set_n, reset_n, d, q);

	input		clk, set_n, reset_n, d;
	output	q;
	
	wire w_inv_set_n, w_or, w_and;
	
	_inv U0_inv(.a(set_n), .y(w_inv_set_n));
	_or2 U1_or2(.a(d), .b(w_inv_set_n), .y(w_or));
	_and2 U2_and2(.a(w_or), .b(reset_n), .y(w_and));
	_dff U3_dff(.clk(clk), .d(w_and), .q(q), .q_bar());
	
endmodule
