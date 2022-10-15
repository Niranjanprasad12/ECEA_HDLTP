module adder_tb;
    reg [1:0] a,b;
    reg cin;
    wire [1:0] sum;
    wire cout;
    adder2bit DUT(.A(a),.B(b),.cin(cin),.sum(sum),.cout(cout));

    initial begin
        $dumpfile("results.vcd");
        $dumpvars(0,adder_tb);
    end

    initial begin
        integer i = 0;
        integer j = 0;
        $monitor ($time, " a=%2b,b=%2b,cin=%b,sum =%2b,carryOut = %b", a,b,cin,sum,cout);
        for (i=0; i<4; i = i+1) begin
            for (j=0; j<4; j=j+1) begin
                #5 a=i; b=j; cin = 1'b0;
            end
        end
    end

endmodule :adder_tb