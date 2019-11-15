module data_memory_tb();

reg MemWrite;
reg MemRead;
reg [31:0] ALUresult;
reg [31:0] WriteData;	
reg clk;
reg reset;
wire [31:0] data_result;	



data_memory test(
	.MemWrite(MemWrite),
	.MemRead(MemRead),
	.ALUresult(ALUresult),
	.WriteData(WriteData),
	.clk(clk),
	.reset(reset),
	.data_result(data_result)
);

initial begin
		//save 1 to F[0]
	clk=1;
	MemRead = 0;
	MemWrite = 1;
	ALUresult = 32'h10010000;
	WriteData = 32'h00000001;
	#10;
	// save 1 to F[1]
	MemRead = 0;
	MemWrite = 1;
	ALUresult = 32'h10010004;
	WriteData = 32'h00000001;
	#10;
	//read 1 from F[0]
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 32'h10010000;
	WriteData = 32'h10010000;
	#10;
	//read 1 from F[1]
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 32'h10010004;
	WriteData = 32'h00000000;
	#10;
	//write 2 to F[2]
	MemRead = 0;
	MemWrite = 1;
	ALUresult = 32'h10010008;
	WriteData = 32'h00000002;;
	#10;
	//read 1 from F[1]
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 32'h10010004;
	WriteData = 32'h00000000;;
	#10;
	//read 2 from F[2]
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 32'h10010008;
	WriteData = 32'h00000000;;
	#10;
	//write 3 into F[3]
	MemRead = 0;
	MemWrite = 1;
	ALUresult = 32'h1001000C;
	WriteData = 32'h00000000;;
	end
	always #5 clk = !clk;
endmodule
