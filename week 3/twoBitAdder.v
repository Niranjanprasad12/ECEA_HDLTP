// start of dataflow modelling

module twoBitAdder(a,b,c,sum,carry);

    // Dataflow modelling......
    input [1:0] a,b;
    input c;
    output [1:0] sum;
    output carry;

  assign {carry,sum} = a+b+c;
endmodule

// end of data flow modelling


// start of strucutral modelling

module twoBitAdder(a,b,c,sum,carry);
  // structural modelling
  	input [1:0] a,b;  // 2- bit input
    input c;   // 1-bit carry in
    output wire [1:0] sum; // 2-bit output
    output wire carry; // 1-bit carry out
	wire cout;

    // structural design using 2 1'bit full adders
  FA_adder f1(.a(a[0]),.b(b[0]),.c(c),.s(sum[0]),.carry_out(cout));
  FA_adder f2(.a(a[1]),.b(b[1]),.c(cout),.s(sum[1]),.carry_out(carry));
endmodule


module FA_adder(a,b,c,s,carry_out);
    // structural description for full adder
    input a,b,c;
    output wire s,carry_out;
    wire temp_sum;
    wire [1:0] temp_carry;
    HA_adder h1(.ha(a),.hb(b),.hs(temp_sum),.hc(temp_carry[0]));
    HA_adder h2(.ha(c),.hb(temp_sum),.hs(s),.hc(temp_carry[1]));
    or(carry_out,temp_carry[0],temp_carry[1]);
endmodule 

module HA_adder (ha,hb,hs,hc);
    // structural description for half adder
    input ha,hb;
    output wire hs,hc;
    xor(hs,ha,hb);
    and(hc,ha,hb);
endmodule 

// end of structural modelling


// start of behavioral modelling

module twoBitAdder(a,b,c,sum,carry);
  // behavioral description of two bit adder
    input [1:0] a,b;
    input c;
    output reg[1:0] sum;
    output reg carry;

    always @(*)
    begin
      {carry,sum} = a+b+c;
    end
endmodule

// end of behavioral modelling