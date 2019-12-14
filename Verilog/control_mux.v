module control_mux(memtoReg, ALUresult, DMresult, data);

input memtoReg;

input [31:0] ALUresult;

input [31:0] DMresult;

output reg [31:0] data;


always @ *
begin
	if(memtoReg==1'b1)
		data <= DMresult;
	else
		data <= ALUresult;

end
endmodule
