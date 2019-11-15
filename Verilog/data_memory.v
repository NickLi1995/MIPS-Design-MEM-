// 32bits MIPS Processor Data Memory

module data_memory(MemWrite, WriteData, ALUresult, MemRead, clk, data_result);

input MemWrite;// memory write signal
input MemRead;	// memory read signal
input [31:0] ALUresult;// ALU result address
input [31:0] WriteData;	// Data need to be write 
input clk;
input reset;// reset signal for clearing memory
output reg [15:0] data_result;	// data result

integer i;
	reg [31:0] ram [255:0]；//init a 16*65025 memory
	wire [7:0] ram_addr = ALUresult[7:0]; //get memory address
	initial
	begin
			for(i= 0 ; i< 256 ; i=i+1)
					ram[i] <= 32'h0;
	end
always @ (posedge clk or posedge reset)
begin 
	if(reset==1) begin
		for(i= 0 ; i< 256 ; i=i+1)
			ram[i] <= 32'b0;
	end else if(MemWrite==1)
		ram[ram_addr] <= WriteData;
end
assign data_result = (MemRead==1'b1)?ram[ram_addr] : 32'h0;

endmodule;

