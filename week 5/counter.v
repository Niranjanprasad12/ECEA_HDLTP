// Code your design here
module counter(clk,clear,count);
  input clk,clear;
  output [3:0] count;
  Tff t1(1'b1,clk,clear,count[0]);
  Tff t2(1'b1,count[0],clear,count[1]);
  Tff t3(1'b1,count[1],clear,count[2]);
  Tff t4(1'b1,count[2],clear,count[3]);
endmodule


module Tff(t,clk,rst,q);
    input clk,rst,t;
    output reg q;
    always @(negedge clk or negedge rst) begin
        if (!rst) q <= 0;
        else begin
          if (t==1'b1) q<= ~q;
          else if (t==1'b0) q<=q;
        end
    end
endmodule