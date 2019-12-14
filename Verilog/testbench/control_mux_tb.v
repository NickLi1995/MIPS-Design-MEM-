module control_mux_tb();
reg memtoReg;
reg [31:0] ALUresult;
reg [31:0] DMresult;
wire [31:0] data;


control_mux testc(
		.memtoReg(memtoReg),
		.ALUresult(ALUresult),
		.DMresult(DMresult),
		.data(data)
);
initial
	begin
		#10;//the register will take data from ALUresult
		memtoReg = 1'b0;
		ALUresult = 32'h00ff;
		DMresult = 32'hffff;
		#10;//save 1 to F[1]
		memtoReg = 1;
		ALUresult = 32'h10010004;
		DMresult = 32'h00000001;
		#10;//write 2 to F[2]
		memtoReg = 1;
		ALUresult = 32'h10010008;
		DMresult = 32'h00000002;
		#10;//write 3 into F[3]
		memtoReg = 1;
		ALUresult = 32'h1001000C;
		DMresult = 32'h00000003;
		#10;// write 5 into F[4]
		memtoReg = 1;
		ALUresult = 32'h10010010;
		DMresult = 32'h00000005;
		#10;// write 8 into F[5]
		memtoReg = 1;
		ALUresult=32'h10010014;
		DMresult=32'h00000008;
		#10;//write 13 into F[6]
		memtoReg = 1;
		ALUresult=32'h10010018;
		DMresult=32'h0000000D;
		#10;//write 21 into F[7]
		memtoReg = 1;
		ALUresult=32'h1001001C;
		DMresult=32'h00000015;
		#10;//write 34 into F[8]
		memtoReg = 1;
		ALUresult=32'h10010020;
		DMresult=32'h00000022;
		#10;//write 55 into F[9]
		memtoReg = 1;
		ALUresult=32'h10010024;
		DMresult=32'h00000037;
		#10;//write 89 into F[10]
		memtoReg = 1;
		ALUresult=32'h10010028;
		DMresult=32'h00000059;
		#10;//write 144 into F[11]
		memtoReg = 1;
		ALUresult=32'h1001002C;
		DMresult=32'h00000090;
		#10;
	end
	always
	begin
	$monitor("ALUresult=%d,DMresult=%d,data=%d\n",ALUresult,DMresult,data);
	#1000 $stop;
	end
endmodule
