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
	WriteData = 32'h00000002;
	#10;
	//read 1 from F[1]
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 32'h10010004;
	WriteData = 32'h00000000;
	#10;
	//read 2 from F[2]
	MemRead = 1;
	MemWrite = 0;
	ALUresult = 32'h10010008;
	WriteData = 32'h00000000;
	#10;
	//write 3 into F[3]
	MemRead = 0;
	MemWrite = 1;
	ALUresult = 32'h1001000C;
	WriteData = 32'h00000003;
	#10;
	//read 2 from F[2]
	MemRead=1;
	MemWrite=0;
	ALUresult = 32'h10010008;
	WriteData = 32'h00000000;
	#10;
	// read 3 from F[3]
	MemRead=1;
	MemWrite=0;
	ALUresult = 32'h10010010;
	WriteData = 32'h00000000;
	#10;
	// write 5 into F[4]
	MemRead=0;
	MemWrite=1;
	ALUresult = 32'h10010010;
	WriteData = 32'h00000005;
	#10;
	// read 3 from F[3]
	MemRead=1;
	MemWrite=0;
	ALUresult= 32'h1001000C;
	WriteData= 32'h00000000;
	#10;
	// read 5 from F[4]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010010;
	WriteData=32'h00000000;
	#10;
	// write 8 into F[5]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h10010014;
	WriteData=32'h00000008;
	#10;
	//read 5 from F[4]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010010;
	WriteData=32'h00000000;
	#10;
	//read 8 from F[5]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010014;
	WriteData=32'h00000000;
	#10;
	//write 13 into F[6]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h10010018;
	WriteData=32'h0000000D;
	#10;
	//read 8 from F[5]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010014;
	WriteData=32'h00000000;
	#10;
	//read 13 from F[6]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010018;
	WriteData=32'h00000000;
	#10;
	//write 21 into F[7]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h1001001C;
	WriteData=32'h00000015;
	#10;
	//read 13 from F[6]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010018;
	WriteData=32'h00000000;
	#10;
	//read 21 from F[7]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h1001001C;
	WriteData=32'h00000000;
	#10;
	//write 34 into F[8]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h10010020;
	WriteData=32'h00000022;
	#10;
	//read 21 from F[7]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h1001001C;
	WriteData=32'h00000000;
	#10;
	//read 34 from F[8]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010020;
	WriteData=32'h00000000;
	#10;
	//write 55 into F[9]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h10010024;
	WriteData=32'h00000037;
	#10;
	//read 34 from F[8]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010020;
	WriteData=32'h00000000;
	#10;
	// read 55 from F[9]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010024;
	WriteData=32'h00000000;
	#10;
	// write 89 into F[10]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h10010028;
	WriteData=32'h00000059;
	#10;
	// read 55 from F[9]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010024;
	WriteData=32'h00000000;
	#10;
	// read 89 from F[10]
	MemRead=1;
	MemWrite=0;
	ALUresult=32'h10010028;
	WriteData=32'h00000000;
	#10;
	//write 144 into F[11]
	MemRead=0;
	MemWrite=1;
	ALUresult=32'h1001002C;
	WriteData=32'h00000090;
	#10;
	end
	always #5 clk = !clk;
	initial begin
	$monitor("ALUresult=%d,data_result=%d\n",ALUresult,data_result);
	#1000 $stop;
	
	end
endmodule
