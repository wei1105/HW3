module vote_tb;
	reg   [3:0] I; //input
	wire  [3:1] O; //output

initial
	begin
	$dumpfile("vote.vcd"); //打開一個vcd數據庫用於紀錄
	$dumpvars(0, s); //要記錄的訊號

	$monitor("I = %b, O = %b ",I,O); //追蹤變數的變化情況
	//將所有input都列在底下
	#10 I = 4'b0000;
	#10 I = 4'b0001;
        #10 I = 4'b0010;
        #10 I = 4'b0011;
        #10 I = 4'b0100;
        #10 I = 4'b0101;
        #10 I = 4'b0110;
        #10 I = 4'b0111;
        #10 I = 4'b1000;
        #10 I = 4'b1001;
        #10 I = 4'b1010;
        #10 I = 4'b1011;
        #10 I = 4'b1100;
        #10 I = 4'b1101;
        #10 I = 4'b1110;
        #10 I = 4'b1111;
	#10 $finish;
	end

	voter_if s(I, O);  //呼叫voter_if
endmodule
