module top;

    reg  [127:0] plaintext;
    reg  [127:0] key;
    wire [1407:0] roundkeys;

    wire [127:0] state0; 
    wire [127:0] subbytes_out;
    wire [127:0] shiftrow_out;
    wire [127:0] mixcolumns_out;
    wire [127:0] addkey_out;
    wire [127:0] subbytes1_out;
    wire [127:0] shiftrow1_out;
    wire [127:0] mixcolumns1_out;
    wire [127:0] addkey1_out;
    wire [127:0] subbytes2_out;
    wire [127:0] shiftrow2_out;
    wire [127:0] mixcolumns2_out;
    wire [127:0] addkey2_out;
    wire [127:0] subbytes3_out;
    wire [127:0] shiftrow3_out;
    wire [127:0] mixcolumns3_out;
    wire [127:0] addkey3_out;
    wire [127:0] subbytes4_out;
    wire [127:0] shiftrow4_out;
    wire [127:0] mixcolumns4_out;
    wire [127:0] addkey4_out;
    wire [127:0] subbytes5_out;
    wire [127:0] shiftrow5_out;
    wire [127:0] mixcolumns5_out;
    wire [127:0] addkey5_out;
    wire [127:0] subbytes6_out;
    wire [127:0] shiftrow6_out;
    wire [127:0] mixcolumns6_out;
    wire [127:0] addkey6_out;
    wire [127:0] subbytes7_out;
    wire [127:0] shiftrow7_out;
    wire [127:0] mixcolumns7_out;
    wire [127:0] addkey7_out;
    wire [127:0] subbytes8_out;
    wire [127:0] shiftrow8_out;
    wire [127:0] mixcolumns8_out;
    wire [127:0] addkey8_out;
    wire [127:0] subbytes9_out;
    wire [127:0] shiftrow9_out;
    wire [127:0] addkey9_out;
   

//0
    keyschedule ks (
        .key(key),
        .roundkeys(roundkeys)
    );
//1
    roundkey rk0 (
        .state(plaintext),
        .roundkey(roundkeys[1407 -: 128]),
        .out(state0)
    );

    subbytes sb (
        .state(state0),
        .out(subbytes_out)
    );

    shiftrows sr (
        .state(subbytes_out),
        .out(shiftrow_out)
    );

    mixcolumns mc (
        .state(shiftrow_out),
        .out(mixcolumns_out)
    );

    roundkey rk1 (
        .state(mixcolumns_out),
        .roundkey(roundkeys[1407-128 -: 128]),
        .out(addkey_out)
    );
//2
    subbytes sb2 (
        .state(addkey_out),
        .out(subbytes1_out)
    );

    shiftrows sr2 (
        .state(subbytes1_out),
        .out(shiftrow1_out)
    );

    mixcolumns mc2 (
        .state(shiftrow1_out),
        .out(mixcolumns1_out)
    );

    roundkey rk2 (
        .state(mixcolumns1_out),
        .roundkey(roundkeys[1407-256 -: 128]),
        .out(addkey1_out)
    );
//3
    subbytes sb3 (
        .state(addkey1_out),
        .out(subbytes2_out)
    );

    shiftrows sr3 (
        .state(subbytes2_out),
        .out(shiftrow2_out)
    );

    mixcolumns mc3 (
        .state(shiftrow2_out),
        .out(mixcolumns2_out)
    );

    roundkey rk3 (
        .state(mixcolumns2_out),
        .roundkey(roundkeys[1407-384 -: 128]),
        .out(addkey2_out)
    );
//4
    subbytes sb4 (
        .state(addkey2_out),
        .out(subbytes3_out)
    );

    shiftrows sr4 (
        .state(subbytes3_out),
        .out(shiftrow3_out)
    );

    mixcolumns mc4 (
        .state(shiftrow3_out),
        .out(mixcolumns3_out)
    );

    roundkey rk4 (
        .state(mixcolumns3_out),
        .roundkey(roundkeys[1407-512 -: 128]),
        .out(addkey3_out)
    );
//5
    subbytes sb5 (
        .state(addkey3_out),
        .out(subbytes4_out)
    );

    shiftrows sr5 (
        .state(subbytes4_out),
        .out(shiftrow4_out)
    );

    mixcolumns mc5 (
        .state(shiftrow4_out),
        .out(mixcolumns4_out)
    );

    roundkey rk5 (
        .state(mixcolumns4_out),
        .roundkey(roundkeys[1407-640 -: 128]),
        .out(addkey4_out)
    );
//6
    subbytes sb6 (
        .state(addkey4_out),
        .out(subbytes5_out)
    );

    shiftrows sr6 (
        .state(subbytes5_out),
        .out(shiftrow5_out)
    );

    mixcolumns mc6 (
        .state(shiftrow5_out),
        .out(mixcolumns5_out)
    );

    roundkey rk6 (
        .state(mixcolumns5_out),
        .roundkey(roundkeys[1407-768 -: 128]),
        .out(addkey5_out)
    );
//7
    subbytes sb7 (
        .state(addkey5_out),
        .out(subbytes6_out)
    );

    shiftrows sr7 (
        .state(subbytes6_out),
        .out(shiftrow6_out)
    );

    mixcolumns mc7 (
        .state(shiftrow6_out),
        .out(mixcolumns6_out)
    );

    roundkey rk7 (
        .state(mixcolumns6_out),
        .roundkey(roundkeys[1407-896 -: 128]),
        .out(addkey6_out)
    );
//8
    subbytes sb8 (
        .state(addkey6_out),
        .out(subbytes7_out)
    );

    shiftrows sr8 (
        .state(subbytes7_out),
        .out(shiftrow7_out)
    );

    mixcolumns mc8 (
        .state(shiftrow7_out),
        .out(mixcolumns7_out)
    );

    roundkey rk8 (
        .state(mixcolumns7_out),
        .roundkey(roundkeys[1407-1024 -: 128]),
        .out(addkey7_out)
    );
//9
    subbytes sb9 (
        .state(addkey7_out),
        .out(subbytes8_out)
    );

    shiftrows sr9 (
        .state(subbytes8_out),
        .out(shiftrow8_out)
    );

    mixcolumns mc9 (
        .state(shiftrow8_out),
        .out(mixcolumns8_out)
    );

    roundkey rk9 (
        .state(mixcolumns8_out),
        .roundkey(roundkeys[1407-1152 -: 128]),
        .out(addkey8_out)
    );
//10
    subbytes sb10 (
        .state(addkey8_out),
        .out(subbytes9_out)
    );

    shiftrows sr10 (
        .state(subbytes9_out),
        .out(shiftrow9_out)
    );

    roundkey rk10 (
        .state(shiftrow9_out),
        .roundkey(roundkeys[1407-1280 -: 128]),
        .out(addkey9_out)
    );

    task print_matrix;
         input [127:0] state;
   	 integer r, c;
   	 reg [7:0] b;
   	 begin
     	   for (r = 0; r < 4; r = r + 1) begin
     	       for (c = 0; c < 4; c = c + 1) begin
         	       b = state[127 - 8*(4*c + r) -: 8];
      	               $write("%02x ", b);
         	   end
     	           $write("\n");
   	      end
  	      $write("\n");
 	   end
    endtask

    initial begin
        plaintext = 128'h00112233445566778899aabbccddeeff;
        key       = 128'h000102030405060708090a0b0c0d0e0f;

        #1000;

        $display("State after initial AddRoundKey:");
        print_matrix(state0);

        $display("State after AddRoundKey (Round 1):");
        print_matrix(addkey_out);

	$display("State after AddRoundKey (Round 2):");
        print_matrix(addkey1_out);
        
	$display("State after AddRoundKey (Round 3):");
        print_matrix(addkey2_out);

	$display("State after AddRoundKey (Round 4):");
        print_matrix(addkey3_out);

	$display("State after AddRoundKey (Round 5):");
        print_matrix(addkey4_out);

	$display("State after AddRoundKey (Round 6):");
        print_matrix(addkey5_out);

	$display("State after AddRoundKey (Round 7):");
        print_matrix(addkey6_out);

	$display("State after AddRoundKey (Round 8):");
        print_matrix(addkey7_out);

	$display("State after AddRoundKey (Round 9):");
        print_matrix(addkey8_out);

	$display("State after AddRoundKey (Round 10):");
        print_matrix(addkey9_out);
        $finish;
    end

endmodule

module sbox (
	input [7:0] in,
	output [7:0] out
);
	reg [7:0] state[0:255];
	
	initial begin
		state[8'h00]= 8'h63;
		state[8'h01]=8'h7c;
		state[8'h02]=8'h77;
		state[8'h03]=8'h7b;
		state[8'h04]=8'hf2;
		state[8'h05]=8'h6b;
		state[8'h06]=8'h6f;
		state[8'h07]=8'hc5;
		state[8'h08]=8'h30;
		state[8'h09]=8'h01;
		state[8'h0a]=8'h67;
		state[8'h0b]=8'h2b;
		state[8'h0c]=8'hfe;
		state[8'h0d]=8'hd7;
		state[8'h0e]=8'hab;
		state[8'h0f]=8'h76;

		state[8'h11]=8'h82;
		state[8'h22]=8'h93;
		state[8'h33]=8'hc3;
		state[8'h44]=8'h1b;
		state[8'h55]=8'hfc;
		state[8'h66]=8'h33;
		state[8'h77]=8'hf5;
		state[8'h88]=8'hc4;
		state[8'h99]=8'hEE;
		state[8'haa]=8'hac;
		state[8'hbb]=8'hea;
		state[8'hcc]=8'h4b;
		state[8'hdd]=8'hc1;
		state[8'hee]=8'h28;
		state[8'hff]=8'h16;

		state[8'h10]=8'hca;
		state[8'h20]=8'hb7;
		state[8'h30]=8'h04;
		state[8'h40]=8'h09;
		state[8'h50]=8'h53;
		state[8'h60]=8'hd0;
		state[8'h70]=8'h51;
		state[8'h80]=8'hcd;
		state[8'h90]=8'h60;
		state[8'ha0]=8'he0;
		state[8'hb0]=8'he7;
		state[8'hc0]=8'hba;
		state[8'hd0]=8'h70;
		state[8'he0]=8'he1;
		state[8'hf0]=8'h8c;

		state[8'h21]=8'hfd;
		state[8'h31]=8'hc7;
		state[8'h41]=8'h83;
		state[8'h51]=8'hd1;
		state[8'h61]=8'hef;
		state[8'h71]=8'ha3;
		state[8'h81]=8'h0c;
		state[8'h91]=8'h81;
		state[8'ha1]=8'h32;
		state[8'hb1]=8'hc8;
		state[8'hc1]=8'h78;
		state[8'hd1]=8'h3e;
		state[8'he1]=8'hf8;
		state[8'hf1]=8'ha1;

		state[8'h12]=8'hc9;
		state[8'h32]=8'h23;
		state[8'h42]=8'h2c;
		state[8'h52]=8'h00;
		state[8'h62]=8'haa;
		state[8'h72]=8'h40;
		state[8'h82]=8'h13;
		state[8'h92]=8'h4f;
		state[8'ha2]=8'h3a;
		state[8'hb2]=8'h37;
		state[8'hc2]=8'h25;
		state[8'hd2]=8'hb5;
		state[8'he2]=8'h98;
		state[8'hf2]=8'h89;

		state[8'h13]=8'h7d;
		state[8'h23]=8'h26;
		state[8'h43]=8'h1a;
		state[8'h53]=8'hed;
		state[8'h63]=8'hfb;
		state[8'h73]=8'h8f;
		state[8'h83]=8'hec;
		state[8'h93]=8'hdc;
		state[8'ha3]=8'h0a;
		state[8'hb3]=8'h6d;
		state[8'hc3]=8'h2e;
		state[8'hd3]=8'h66;
		state[8'he3]=8'h11;
		state[8'hf3]=8'h0d;

		state[8'h14]=8'hfa;
		state[8'h24]=8'h36;
		state[8'h34]=8'h18;
		state[8'h54]=8'h20;
		state[8'h64]=8'h43;
		state[8'h74]=8'h92;
		state[8'h84]=8'h5f;
		state[8'h94]=8'h22;
		state[8'ha4]=8'h49;
		state[8'hb4]=8'h8d;
		state[8'hc4]=8'h1c;
		state[8'hd4]=8'h48;
		state[8'he4]=8'h69;
		state[8'hf4]=8'hbf;
		
		state[8'h15]=8'h59;
		state[8'h25]=8'h3f;
		state[8'h35]=8'h96;
		state[8'h45]=8'h6e;
		state[8'h65]=8'h4d;
		state[8'h75]=8'h9d;
		state[8'h85]=8'h97;
		state[8'h95]=8'h2a;
		state[8'ha5]=8'h06;
		state[8'hb5]=8'hd5;
		state[8'hc5]=8'ha6;
		state[8'hd5]=8'h03;
		state[8'he5]=8'hd9;
		state[8'hf5]=8'he6;

		state[8'h16]=8'h47;
		state[8'h26]=8'hf7;
		state[8'h36]=8'h05;
		state[8'h46]=8'h5a;
		state[8'h56]=8'hb1;
		state[8'h76]=8'h38;
		state[8'h86]=8'h44;
		state[8'h96]=8'h90;
		state[8'ha6]=8'h24;
		state[8'hb6]=8'h4e;
		state[8'hc6]=8'hb4;
		state[8'hd6]=8'hf6;
		state[8'he6]=8'h8e;
		state[8'hf6]=8'h42;

		state[8'h17]=8'hf0;
		state[8'h27]=8'hcc;
		state[8'h37]=8'h9a;
		state[8'h47]=8'ha0;
		state[8'h57]=8'h5b;
		state[8'h67]=8'h85;
		state[8'h87]=8'h17;
		state[8'h97]=8'h88;
		state[8'ha7]=8'h5c;
		state[8'hb7]=8'ha9;
		state[8'hc7]=8'hc6;
		state[8'hd7]=8'h0e;
		state[8'he7]=8'h94;
		state[8'hf7]=8'h68;

		state[8'h18]=8'had;
		state[8'h28]=8'h34;
		state[8'h38]=8'h07;
		state[8'h48]=8'h52;
		state[8'h58]=8'h6a;
		state[8'h68]=8'h45;
		state[8'h78]=8'hbc;
		state[8'h98]=8'h46;
		state[8'ha8]=8'hc2;
		state[8'hb8]=8'h6c;
		state[8'hc8]=8'he8;
		state[8'hd8]=8'h61;
		state[8'he8]=8'h9b;
		state[8'hf8]=8'h41;

		state[8'h19]=8'hd4;
		state[8'h29]=8'ha5;
		state[8'h39]=8'h12;
		state[8'h49]=8'h3b;
		state[8'h59]=8'hcb;
		state[8'h69]=8'hf9;
		state[8'h79]=8'hb6;
		state[8'h89]=8'ha7;
		state[8'ha9]=8'hd3;
		state[8'hb9]=8'h56;
		state[8'hc9]=8'hdd;
		state[8'hd9]=8'h35;
		state[8'he9]=8'h1e;
		state[8'hf9]=8'h99;

		state[8'h1a]=8'ha2;
		state[8'h2a]=8'he5;
		state[8'h3a]=8'h80;
		state[8'h4a]=8'hd6;
		state[8'h5a]=8'hbe;
		state[8'h6a]=8'h02;
		state[8'h7a]=8'hda;
		state[8'h8a]=8'h7e;
		state[8'h9a]=8'hb8;
		state[8'hba]=8'hf4;
		state[8'hca]=8'h74;
		state[8'hda]=8'h57;
		state[8'hea]=8'h87;
		state[8'hfa]=8'h2d;

		state[8'h1b]=8'haf;
		state[8'h2b]=8'hf1;
		state[8'h3b]=8'he2;
		state[8'h4b]=8'hb3;
		state[8'h5b]=8'h39;
		state[8'h6b]=8'h7f;
		state[8'h7b]=8'h21;
		state[8'h8b]=8'h3d;
		state[8'h9b]=8'h14;
		state[8'hab]=8'h62;
		state[8'hcb]=8'h1f;
		state[8'hdb]=8'hb9;
		state[8'heb]=8'he9;
		state[8'hfb]=8'h0f;
		
		state[8'h1c]=8'h9c;
		state[8'h2c]=8'h71;
		state[8'h3c]=8'heb;
		state[8'h4c]=8'h29;
		state[8'h5c]=8'h4a;
		state[8'h6c]=8'h50;
		state[8'h7c]=8'h10;
		state[8'h8c]=8'h64;
		state[8'h9c]=8'hde;
		state[8'hac]=8'h91;
		state[8'hbc]=8'h65;
		state[8'hdc]=8'h86;
		state[8'hec]=8'hce;
		state[8'hfc]=8'hb0;

		state[8'h1d]=8'ha4;
		state[8'h2d]=8'hd8;
		state[8'h3d]=8'h27;
		state[8'h4d]=8'he3;
		state[8'h5d]=8'h4c;
		state[8'h6d]=8'h3c;
		state[8'h7d]=8'hff;
		state[8'h8d]=8'h5d;
		state[8'h9d]=8'h5e;
		state[8'had]=8'h95;
		state[8'hbd]=8'h7a;
		state[8'hcd]=8'hbd;
		state[8'hed]=8'h55;
		state[8'hfd]=8'h54;

		state[8'h1e]=8'h72;
		state[8'h2e]=8'h31;
		state[8'h3e]=8'hb2;
		state[8'h4e]=8'h2f;
		state[8'h5e]=8'h58;
		state[8'h6e]=8'h9f;
		state[8'h7e]=8'hf3;
		state[8'h8e]=8'h19;
		state[8'h9e]=8'h0b;
		state[8'hae]=8'he4;
		state[8'hbe]=8'hae;
		state[8'hce]=8'h8b;
		state[8'hde]=8'h1d;
		state[8'hfe]=8'hbb;

		state[8'h1f]=8'hc0;
		state[8'h2f]=8'h15;
		state[8'h3f]=8'h75;
		state[8'h4f]=8'h84;
		state[8'h5f]=8'hcf;
		state[8'h6f]=8'ha8;
		state[8'h7f]=8'hd2;
		state[8'h8f]=8'h73;
		state[8'h9f]=8'hdb;
		state[8'haf]=8'h79;
		state[8'hbf]=8'h08;
		state[8'hcf]=8'h8a;
		state[8'hdf]=8'h9e;
		state[8'hef]=8'hdf;
		
	end
	
	assign out = state[in];
endmodule

module subbytes (
    input  [127:0] state,
    output [127:0] out
);

	sbox s0 (state[127:120], out[127:120]);
	sbox s1 (state[119:112], out[119:112]);
	sbox s2 (state[111:104], out[111:104]);
	sbox s3 (state[103:96],  out[103:96]);

	sbox s4 (state[95:88],   out[95:88]);
	sbox s5 (state[87:80],   out[87:80]);
	sbox s6 (state[79:72],   out[79:72]);
	sbox s7 (state[71:64],   out[71:64]);

	sbox s8  (state[63:56],  out[63:56]);
	sbox s9  (state[55:48],  out[55:48]);
	sbox s10 (state[47:40],  out[47:40]);
	sbox s11 (state[39:32],  out[39:32]);

	sbox s12 (state[31:24],  out[31:24]);
	sbox s13 (state[23:16],  out[23:16]);
	sbox s14 (state[15:8],   out[15:8]);
	sbox s15 (state[7:0],    out[7:0]);

endmodule

module shiftrows (
    input  [127:0] state,
    output [127:0] out
);

assign out = {
    state[127:120], state[87:80],  state[47:40],  state[7:0],
    state[95:88],   state[55:48],  state[15:8],   state[103:96],
    state[63:56],   state[23:16],  state[111:104],state[71:64],
    state[31:24],   state[119:112],state[79:72],  state[39:32]
};

endmodule

function [7:0] xtime;
    input [7:0] x;
    begin
        xtime = x[7] ? ((x << 1) ^ 8'h1b) : (x << 1);
    end
endfunction

function [7:0] mul3;
    input [7:0] x;
    begin
        mul3 = xtime(x) ^ x;
    end
endfunction

module mixcolumn(
    input  [31:0] col,
    output [31:0] out
);

wire [7:0] s0 = col[31:24];
wire [7:0] s1 = col[23:16];
wire [7:0] s2 = col[15:8];
wire [7:0] s3 = col[7:0];

assign out[31:24] = xtime(s0) ^ mul3(s1) ^ s2 ^ s3;
assign out[23:16] = s0 ^ xtime(s1) ^ mul3(s2) ^ s3;
assign out[15:8]  = s0 ^ s1 ^ xtime(s2) ^ mul3(s3);
assign out[7:0]   = mul3(s0) ^ s1 ^ s2 ^ xtime(s3);

endmodule

module mixcolumns(
    input  [127:0] state,
    output [127:0] out
);

mixcolumn c0(state[127:96], out[127:96]);
mixcolumn c1(state[95:64],  out[95:64]);
mixcolumn c2(state[63:32],  out[63:32]);
mixcolumn c3(state[31:0],   out[31:0]);

endmodule

function [7:0] rcon;
input [3:0] i;
begin
    case(i)
        1: rcon = 8'h01;
        2: rcon = 8'h02;
        3: rcon = 8'h04;
        4: rcon = 8'h08;
        5: rcon = 8'h10;
        6: rcon = 8'h20;
        7: rcon = 8'h40;
        8: rcon = 8'h80;
        9: rcon = 8'h1B;
        10: rcon = 8'h36;
        default: rcon = 8'h00;
    endcase
end
endfunction

module subword(
    input  [31:0] in,
    output [31:0] out
);

sbox s0 (.in(in[31:24]), .out(out[31:24]));
sbox s1 (.in(in[23:16]), .out(out[23:16]));
sbox s2 (.in(in[15:8]),  .out(out[15:8]));
sbox s3 (.in(in[7:0]),   .out(out[7:0]));

endmodule

module roundkey(
    input [127:0] state,
    input [127:0] roundkey,
    output [127:0] out
);

assign out = state ^ roundkey;

endmodule

function [7:0] sbox_func;
input [7:0] in;
begin
    case(in)
        	8'h00: sbox_func = 8'h63;
        	8'h01: sbox_func = 8'h7c;
        	8'h02: sbox_func = 8'h77;
        	8'h03: sbox_func = 8'h7b;
        	8'h04: sbox_func = 8'hf2;
		8'h05: sbox_func = 8'h6b;
		8'h06: sbox_func = 8'h6f;
		8'h07: sbox_func = 8'hc5;
		8'h08: sbox_func = 8'h30;
		8'h09: sbox_func = 8'h01;
		8'h0a: sbox_func = 8'h67;
		8'h0b: sbox_func = 8'h2b;
		8'h0c: sbox_func = 8'hfe;
		8'h0d: sbox_func = 8'hd7;
		8'h0e: sbox_func = 8'hab;
		8'h0f: sbox_func = 8'h76;

		8'h11: sbox_func =8'h82;
		8'h22: sbox_func =8'h93;
		8'h33: sbox_func =8'hc3;
		8'h44: sbox_func =8'h1b;
		8'h55: sbox_func =8'hfc;
		8'h66: sbox_func =8'h33;
		8'h77: sbox_func =8'hf5;
		8'h88: sbox_func =8'hc4;
		8'h99: sbox_func =8'hEE;
		8'haa: sbox_func =8'hac;
		8'hbb: sbox_func =8'hea;
		8'hcc: sbox_func =8'h4b;
		8'hdd: sbox_func =8'hc1;
		8'hee: sbox_func =8'h28;
		8'hff: sbox_func =8'h16;

		8'h10: sbox_func =8'hca;
		8'h20: sbox_func =8'hb7;
		8'h30: sbox_func =8'h04;
		8'h40: sbox_func =8'h09;
		8'h50: sbox_func =8'h53;
		8'h60: sbox_func =8'hd0;
		8'h70: sbox_func =8'h51;
		8'h80: sbox_func =8'hcd;
		8'h90: sbox_func =8'h60;
		8'ha0: sbox_func =8'he0;
		8'hb0: sbox_func =8'he7;
		8'hc0: sbox_func =8'hba;
		8'hd0: sbox_func =8'h70;
		8'he0: sbox_func =8'he1;
		8'hf0: sbox_func =8'h8c;

		8'h21: sbox_func =8'hfd;
		8'h31: sbox_func =8'hc7;
		 8'h41: sbox_func =8'h83;
		 8'h51: sbox_func =8'hd1;
		 8'h61: sbox_func =8'hef;
		 8'h71: sbox_func =8'ha3;
		 8'h81: sbox_func =8'h0c;
		 8'h91: sbox_func =8'h81;
		 8'ha1: sbox_func =8'h32;
		 8'hb1: sbox_func =8'hc8;
		 8'hc1: sbox_func =8'h78;
		 8'hd1: sbox_func =8'h3e;
		 8'he1: sbox_func =8'hf8;
		 8'hf1: sbox_func =8'ha1;

		 8'h12: sbox_func =8'hc9;
		 8'h32: sbox_func =8'h23;
		 8'h42: sbox_func =8'h2c;
		 8'h52: sbox_func =8'h00;
		 8'h62: sbox_func =8'haa;
		 8'h72: sbox_func =8'h40;
		 8'h82: sbox_func =8'h13;
		 8'h92: sbox_func =8'h4f;
		 8'ha2: sbox_func =8'h3a;
		 8'hb2: sbox_func =8'h37;
		 8'hc2: sbox_func =8'h25;
		 8'hd2: sbox_func =8'hb5;
		 8'he2: sbox_func =8'h98;
		 8'hf2: sbox_func =8'h89;

		 8'h13: sbox_func =8'h7d;
		 8'h23: sbox_func =8'h26;
		 8'h43: sbox_func =8'h1a;
		 8'h53: sbox_func =8'hed;
		 8'h63: sbox_func =8'hfb;
		 8'h73: sbox_func =8'h8f;
		 8'h83: sbox_func =8'hec;
		 8'h93: sbox_func =8'hdc;
		 8'ha3: sbox_func =8'h0a;
		 8'hb3: sbox_func =8'h6d;
		 8'hc3: sbox_func =8'h2e;
		 8'hd3: sbox_func =8'h66;
		 8'he3: sbox_func =8'h11;
		 8'hf3: sbox_func =8'h0d;

		 8'h14: sbox_func =8'hfa;
		 8'h24: sbox_func =8'h36;
		 8'h34: sbox_func =8'h18;
		 8'h54: sbox_func =8'h20;
		 8'h64: sbox_func =8'h43;
		 8'h74: sbox_func =8'h92;
		 8'h84: sbox_func =8'h5f;
		 8'h94: sbox_func =8'h22;
		 8'ha4: sbox_func =8'h49;
		 8'hb4: sbox_func =8'h8d;
		 8'hc4: sbox_func =8'h1c;
		 8'hd4: sbox_func =8'h48;
		 8'he4: sbox_func =8'h69;
		 8'hf4: sbox_func =8'hbf;
		
		 8'h15: sbox_func =8'h59;
		 8'h25: sbox_func =8'h3f;
		 8'h35: sbox_func =8'h96;
		 8'h45: sbox_func =8'h6e;
		 8'h65: sbox_func =8'h4d;
		 8'h75: sbox_func =8'h9d;
		 8'h85: sbox_func =8'h97;
		 8'h95: sbox_func =8'h2a;
		 8'ha5: sbox_func =8'h06;
		 8'hb5: sbox_func =8'hd5;
		 8'hc5: sbox_func =8'ha6;
		 8'hd5: sbox_func =8'h03;
		 8'he5: sbox_func =8'hd9;
		 8'hf5: sbox_func =8'he6;

		 8'h16: sbox_func =8'h47;
		 8'h26: sbox_func =8'hf7;
		 8'h36: sbox_func =8'h05;
		 8'h46: sbox_func =8'h5a;
		 8'h56: sbox_func =8'hb1;
		 8'h76: sbox_func =8'h38;
		 8'h86: sbox_func =8'h44;
		 8'h96: sbox_func =8'h90;
		 8'ha6: sbox_func =8'h24;
		 8'hb6: sbox_func =8'h4e;
		 8'hc6: sbox_func =8'hb4;
		 8'hd6: sbox_func =8'hf6;
		 8'he6: sbox_func =8'h8e;
		 8'hf6: sbox_func =8'h42;

		 8'h17: sbox_func =8'hf0;
		 8'h27: sbox_func =8'hcc;
		 8'h37: sbox_func =8'h9a;
		 8'h47: sbox_func =8'ha0;
		 8'h57: sbox_func =8'h5b;
		 8'h67: sbox_func =8'h85;
		 8'h87: sbox_func =8'h17;
		 8'h97: sbox_func =8'h88;
		 8'ha7: sbox_func =8'h5c;
		 8'hb7: sbox_func =8'ha9;
		 8'hc7: sbox_func =8'hc6;
		 8'hd7: sbox_func =8'h0e;
		 8'he7: sbox_func =8'h94;
		 8'hf7: sbox_func =8'h68;

		 8'h18: sbox_func =8'had;
		 8'h28: sbox_func =8'h34;
		 8'h38: sbox_func =8'h07;
		 8'h48: sbox_func =8'h52;
		 8'h58: sbox_func =8'h6a;
		 8'h68: sbox_func =8'h45;
		 8'h78: sbox_func =8'hbc;
		 8'h98: sbox_func =8'h46;
		 8'ha8: sbox_func =8'hc2;
		 8'hb8: sbox_func =8'h6c;
		 8'hc8: sbox_func =8'he8;
		 8'hd8: sbox_func =8'h61;
		 8'he8: sbox_func =8'h9b;
		 8'hf8: sbox_func =8'h41;

		 8'h19: sbox_func =8'hd4;
		 8'h29: sbox_func =8'ha5;
		 8'h39: sbox_func =8'h12;
		 8'h49: sbox_func =8'h3b;
		 8'h59: sbox_func =8'hcb;
		 8'h69: sbox_func =8'hf9;
		 8'h79: sbox_func =8'hb6;
		 8'h89: sbox_func =8'ha7;
		 8'ha9: sbox_func =8'hd3;
		 8'hb9: sbox_func =8'h56;
		 8'hc9: sbox_func =8'hdd;
		 8'hd9: sbox_func =8'h35;
		 8'he9: sbox_func =8'h1e;
		 8'hf9: sbox_func =8'h99;

		 8'h1a: sbox_func =8'ha2;
		 8'h2a: sbox_func =8'he5;
		 8'h3a: sbox_func =8'h80;
		 8'h4a: sbox_func =8'hd6;
		 8'h5a: sbox_func =8'hbe;
		 8'h6a: sbox_func =8'h02;
		 8'h7a: sbox_func =8'hda;
		 8'h8a: sbox_func =8'h7e;
		 8'h9a: sbox_func =8'hb8;
		 8'hba: sbox_func =8'hf4;
		 8'hca: sbox_func =8'h74;
		 8'hda: sbox_func =8'h57;
		 8'hea: sbox_func =8'h87;
		 8'hfa: sbox_func =8'h2d;

		 8'h1b: sbox_func =8'haf;
		 8'h2b: sbox_func =8'hf1;
		 8'h3b: sbox_func =8'he2;
		 8'h4b: sbox_func =8'hb3;
		 8'h5b: sbox_func =8'h39;
		 8'h6b: sbox_func =8'h7f;
		 8'h7b: sbox_func =8'h21;
		 8'h8b: sbox_func =8'h3d;
		 8'h9b: sbox_func =8'h14;
		 8'hab: sbox_func =8'h62;
		 8'hcb: sbox_func =8'h1f;
		 8'hdb: sbox_func =8'hb9;
		 8'heb: sbox_func =8'he9;
		 8'hfb: sbox_func =8'h0f;
		
		 8'h1c: sbox_func =8'h9c;
		 8'h2c: sbox_func =8'h71;
		 8'h3c: sbox_func =8'heb;
		 8'h4c: sbox_func =8'h29;
		 8'h5c: sbox_func =8'h4a;
		 8'h6c: sbox_func =8'h50;
		 8'h7c: sbox_func =8'h10;
		 8'h8c: sbox_func =8'h64;
		 8'h9c: sbox_func =8'hde;
		 8'hac: sbox_func =8'h91;
		 8'hbc: sbox_func =8'h65;
		 8'hdc: sbox_func =8'h86;
		 8'hec: sbox_func =8'hce;
		 8'hfc: sbox_func =8'hb0;

		 8'h1d: sbox_func =8'ha4;
		 8'h2d: sbox_func =8'hd8;
		 8'h3d: sbox_func =8'h27;
		 8'h4d: sbox_func =8'he3;
		 8'h5d: sbox_func =8'h4c;
		 8'h6d: sbox_func =8'h3c;
		 8'h7d: sbox_func =8'hff;
		 8'h8d: sbox_func =8'h5d;
		 8'h9d: sbox_func =8'h5e;
		 8'had: sbox_func =8'h95;
		 8'hbd: sbox_func =8'h7a;
		 8'hcd: sbox_func =8'hbd;
		 8'hed: sbox_func =8'h55;
		 8'hfd: sbox_func =8'h54;

		 8'h1e: sbox_func =8'h72;
		 8'h2e: sbox_func =8'h31;
		 8'h3e: sbox_func =8'hb2;
		 8'h4e: sbox_func =8'h2f;
		 8'h5e: sbox_func =8'h58;
		 8'h6e: sbox_func =8'h9f;
		 8'h7e: sbox_func =8'hf3;
		 8'h8e: sbox_func =8'h19;
		 8'h9e: sbox_func =8'h0b;
		 8'hae: sbox_func =8'he4;
		 8'hbe: sbox_func =8'hae;
		 8'hce: sbox_func =8'h8b;
		 8'hde: sbox_func =8'h1d;
		 8'hfe: sbox_func =8'hbb;

		 8'h1f: sbox_func =8'hc0;
		 8'h2f: sbox_func =8'h15;
		 8'h3f: sbox_func =8'h75;
		 8'h4f: sbox_func =8'h84;
		 8'h5f: sbox_func =8'hcf;
		 8'h6f: sbox_func =8'ha8;
		 8'h7f: sbox_func =8'hd2;
		 8'h8f: sbox_func =8'h73;
		 8'h9f: sbox_func =8'hdb;
		 8'haf: sbox_func =8'h79;
		 8'hbf: sbox_func =8'h08;
		 8'hcf: sbox_func =8'h8a;
		 8'hdf: sbox_func =8'h9e;
		 8'hef: sbox_func =8'hdf;
        default: sbox_func = 8'h00;
    endcase
end
endfunction

module keyschedule(
    input  [127:0] key,
    output reg [1407:0] roundkeys
);

reg [31:0] w [0:43];
integer i;

reg  [31:0] temp;
reg  [31:0] prev;
reg [31:0] rot_out;
reg [31:0] sub_out;

always @(*) begin

    w[0] = key[127:96];
    w[1] = key[95:64];
    w[2] = key[63:32];
    w[3] = key[31:0];

    for(i=4; i<44; i=i+1) begin
        prev = w[i-1];

        if(i % 4 == 0) begin
            rot_out = {prev[23:0], prev[31:24]};

            sub_out[31:24] = sbox_func(rot_out[31:24]);
            sub_out[23:16] = sbox_func(rot_out[23:16]);
            sub_out[15:8]  = sbox_func(rot_out[15:8]);
            sub_out[7:0]   = sbox_func(rot_out[7:0]);

            temp = sub_out ^ {rcon(i/4), 24'h0};
        end
        else begin
            temp = prev;
        end

        w[i] = w[i-4] ^ temp;
    end

    for(i=0; i<44; i=i+1)
        roundkeys[1407 - i*32 -: 32] = w[i];

end
endmodule