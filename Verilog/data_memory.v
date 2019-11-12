// 32bits MIPS Processor Data Memory

module data_memory(MemWrite, WriteData, ALUresult, MemRead, clk, data_result);

input MemWrite;// memory write signal
input MemRead;	// memory read signal
input [15:0] ALUresult;// ALU result address
input [15:0] WriteData;	// Data need to be write 
input clk;
input reset;// reset signal for clearing memory
output reg [15:0] data_result;	// data result

integer i;
	reg [15:0] ram [65024:0]；//init a 16*65025 memory
	wire [15:0] ram_addr = ALUresult[15:0]; //get memory address
	initial
	begin
			for(i= 0 ; i< 65025 ; i=i+1)
					ram[i] <= 16'b0;
	end
always @ (posedge clk or posedge reset)
begin 
	if(reset==1) begin
		for(i= 0 ; i< 65025 ; i=i+1)
			ram[i] <= 16'b0;
	end else if(MemWrite==1)
		ram[ram_addr] <= WriteData;
end
assign data_result = (MemRead==1'b1)?ram[ram_addr] : 16'b0;

endmodule;

