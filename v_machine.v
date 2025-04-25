module v_machine(act, clk, reset, next, cd);

input [2:0] act; //action
input clk, reset;
output reg [2:0] next; // next state output show to user

reg [2:0] state;
reg [2:0] next_state; 
output reg [4:0] cd; //change_drink

parameter [2:0] s0=3'b000;
parameter [2:0] s1=3'b001;
parameter [2:0] s2=3'b010;
parameter [2:0] s3=3'b011;
parameter [2:0] s4=3'b100;
parameter [2:0] s5=3'b101;
parameter [2:0] s6=3'b110;
parameter [2:0] s7=3'b111;

// beginning state is s0
always@(reset)
	begin
		if(reset)
			state = s0;
		else
			state = next_state;
	end


always@(posedge clk)
	begin
// next state depends on present state and action
	case(state)
	// s0 = rm0.00 
	s0:
	begin
		if(act == 3'b000)
		begin
			next_state = s0;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s1;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s2;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s0;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s0;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s0;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s0;
			cd <= 00000;
			next <= next_state;
		end
	end
	// s1 = rm0.50 
	s1:
	begin
		if(act == 3'b000)
		begin
			next_state = s1;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s2;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s3;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 00100;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s1;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s1;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s1;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s1;
			cd <= 00000;
			next <= next_state;
		end
	end
	// s2 = rm1.00 
	s2:
	begin
		if(act == 3'b000)
		begin
			next_state = s2;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s3;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s4;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 01000;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s2;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s0;
			cd <= 00001;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s2;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s2;
			cd <= 00000;
			next <= next_state;
		end
	end
	// s3 = rm1.50 
	s3:
	begin
		if(act == 3'b000)
		begin
			next_state = s3;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s4;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s5;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 01100;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s3;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s1;
			cd <= 00001;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s0;
			cd <= 00010;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s3;
			cd <= 00000;
			next <= next_state;
		end
	end
	// s4 = rm2.00 
	s4:
	begin
		if(act == 3'b000)
		begin
			next_state = s4;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s5;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s6;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 10000;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s4;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s2;
			cd <= 00001;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s1;
			cd <= 00010;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s0;
			cd <= 00011;
			next <= next_state;
		end
	end
	// s5 = rm2.50 
	s5:
	begin
		if(act == 3'b000)
		begin
			next_state = s5;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s6;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s7;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 10100;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s5;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s3;
			cd <= 00001;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s2;
			cd <= 00010;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s1;
			cd <= 00011;
			next <= next_state;
		end
	end
	// s6 = rm3.00 
	s6:
	begin
		if(act == 3'b000)
		begin
			next_state = s6;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s7;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s7;
			cd <= 00100;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 11000;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s6;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s4;
			cd <= 00001;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s3;
			cd <= 00010;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s2;
			cd <= 00011;
			next <= next_state;
		end
	end
	// s7 = rm3.50
	s7:
	begin
		if(act == 3'b000)
		begin
			next_state = s7;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b001)
		begin
			next_state = s7;
			cd <= 00100;
			next <= next_state;
		end
		else if(act == 3'b010)
		begin
			next_state = s7;
			cd <= 01000;
			next <= next_state;
		end
		else if(act == 3'b011)
		begin
			next_state = s0;
			cd <= 11100;
			next <= next_state;
		end
		else if(act == 3'b100)
		begin
			next_state = s7;
			cd <= 00000;
			next <= next_state;
		end
		else if(act == 3'b101)
		begin
			next_state = s5;
			cd <= 00001;
			next <= next_state;
		end
		else if(act == 3'b110)
		begin
			next_state = s4;
			cd <= 00010;
			next <= next_state;
		end
		else if(act == 3'b111)
		begin
			next_state = s3;
			cd <= 00011;
			next <= next_state;
		end
	end
	
	default : next_state = s0;
	
	endcase // end case(state)
	
end // end always@(posedge clk)
	
endmodule
