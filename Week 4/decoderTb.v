module decoderTb;
  reg [1:0] in;
  reg en;
  wire [3:0] out;
  decoder2_4 DUT(in,out,en);
  initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0,decoderTb);
    $monitor($time, "in=%2b; en = %b; out = %4b",in,en,out);
    integer i = 0;
    for (i; i<7; i=i+1) begin
      #3 {in,en} = i;
    end
    #100 $finish
  end
endmodule