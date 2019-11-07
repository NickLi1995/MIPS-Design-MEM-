module control_mux_tb();
reg memtoReg;
reg [15:0] ALUresult;
reg [15:0] DMresult;
wire [15:0] data;


control_mux testc(
		.memtoReg(memtoReg),
		.ALUresult(ALUresult),
		.DMresult(DMresult),
		.data(data)
);
intital
	begin
		#10;
		memtoReg = 1;
		ALUresult = 16'h00;
		DMresult = 16'hff;
		#10;



endmodule
