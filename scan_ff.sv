//module for scan flip flop

module scan_ff(
input in,sin,shiftdr,clkdr,updr,mode;
output sout,out;
);

reg sdr,dr;
wire out, id;
assign out= mode ? (dr) : (in);
assign id= shiftdr? sin: in;
assign sout=dr;
  
always @(posedge clkdr) begin
sdr<=id;
end

always @(posedge updr) begin
dr<=srd;
end


endmodule
