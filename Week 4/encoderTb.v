module encoderTb;
  reg [3:0] in;
  reg en;
  wire [1:0] out;
  encoder2_4 DUT(in,out,en);
  initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0,encoderTb);
    $monitor($time, "in=%4b; en = %b; out = %2b",in,en,out);
    integer i = 0;
    for (i; i<32; i=i+1) begin
      #3 {in,en} = i;
    end
    #100 $finish
  end
endmodule