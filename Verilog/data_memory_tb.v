module data_memory_tb();

reg MemWrite;
reg MemRead;
reg [15:0] ALUresult;
reg [15:0] WriteData;	
reg clk;
reg reset;
wire [15:0] data_result;	



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
	clk=1;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	#10;
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 16'hF0F0;
	WriteData = 16'h0000;
	end
	always #5 clk = !clk;
endmodule
