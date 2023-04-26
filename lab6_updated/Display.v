module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = io_in == 4'hf ? 7'h71 : 7'h0; // @[SevenSegDec.scala 43:35 44:12 10:27]
  wire [6:0] _GEN_1 = io_in == 4'he ? 7'h7b : _GEN_0; // @[SevenSegDec.scala 41:35 42:12]
  wire [6:0] _GEN_2 = io_in == 4'hd ? 7'h5e : _GEN_1; // @[SevenSegDec.scala 39:35 40:12]
  wire [6:0] _GEN_3 = io_in == 4'hc ? 7'h39 : _GEN_2; // @[SevenSegDec.scala 37:35 38:12]
  wire [6:0] _GEN_4 = io_in == 4'hb ? 7'h7c : _GEN_3; // @[SevenSegDec.scala 35:35 36:12]
  wire [6:0] _GEN_5 = io_in == 4'ha ? 7'h77 : _GEN_4; // @[SevenSegDec.scala 33:35 34:12]
  wire [6:0] _GEN_6 = io_in == 4'h9 ? 7'h6f : _GEN_5; // @[SevenSegDec.scala 31:35 32:12]
  wire [6:0] _GEN_7 = io_in == 4'h8 ? 7'h7f : _GEN_6; // @[SevenSegDec.scala 29:35 30:12]
  wire [6:0] _GEN_8 = io_in == 4'h7 ? 7'h7 : _GEN_7; // @[SevenSegDec.scala 27:35 28:12]
  wire [6:0] _GEN_9 = io_in == 4'h6 ? 7'h7d : _GEN_8; // @[SevenSegDec.scala 25:35 26:12]
  wire [6:0] _GEN_10 = io_in == 4'h5 ? 7'h6d : _GEN_9; // @[SevenSegDec.scala 23:35 24:12]
  wire [6:0] _GEN_11 = io_in == 4'h4 ? 7'h66 : _GEN_10; // @[SevenSegDec.scala 21:35 22:12]
  wire [6:0] _GEN_12 = io_in == 4'h3 ? 7'h4f : _GEN_11; // @[SevenSegDec.scala 19:35 20:12]
  wire [6:0] _GEN_13 = io_in == 4'h2 ? 7'h5b : _GEN_12; // @[SevenSegDec.scala 17:35 18:12]
  wire [6:0] _GEN_14 = io_in == 4'h1 ? 7'h6 : _GEN_13; // @[SevenSegDec.scala 15:35 16:12]
  assign io_out = io_in == 4'h0 ? 7'h3f : _GEN_14; // @[SevenSegDec.scala 13:29 14:12]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  input  [7:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] sevModule_io_in; // @[DisplayMultiplexer.scala 27:25]
  wire [6:0] sevModule_io_out; // @[DisplayMultiplexer.scala 27:25]
  reg [31:0] tickCounterReg; // @[DisplayMultiplexer.scala 16:31]
  wire  tick = tickCounterReg == 32'h1869f; // @[DisplayMultiplexer.scala 17:29]
  reg [1:0] regCnt; // @[DisplayMultiplexer.scala 19:23]
  wire [31:0] _tickCounterReg_T_1 = tickCounterReg + 32'h1; // @[DisplayMultiplexer.scala 22:36]
  wire [1:0] _regCnt_T_1 = regCnt + 2'h1; // @[DisplayMultiplexer.scala 25:22]
  wire  _T = 2'h0 == regCnt; // @[DisplayMultiplexer.scala 29:18]
  wire  _T_1 = 2'h1 == regCnt; // @[DisplayMultiplexer.scala 29:18]
  wire  _T_2 = 2'h2 == regCnt; // @[DisplayMultiplexer.scala 29:18]
  wire  _T_3 = 2'h3 == regCnt; // @[DisplayMultiplexer.scala 29:18]
  wire [3:0] _GEN_2 = 2'h3 == regCnt ? io_sum[7:4] : 4'h0; // @[DisplayMultiplexer.scala 29:18 28:19 40:23]
  wire [3:0] _GEN_3 = 2'h2 == regCnt ? io_sum[3:0] : _GEN_2; // @[DisplayMultiplexer.scala 29:18 37:23]
  wire [3:0] _GEN_4 = 2'h1 == regCnt ? io_price[7:4] : _GEN_3; // @[DisplayMultiplexer.scala 29:18 34:23]
  wire [3:0] _GEN_6 = _T_3 ? 4'h8 : 4'h1; // @[DisplayMultiplexer.scala 47:18 58:14 13:27]
  wire [3:0] _GEN_7 = _T_2 ? 4'h4 : _GEN_6; // @[DisplayMultiplexer.scala 47:18 55:14]
  wire [3:0] _GEN_8 = _T_1 ? 4'h2 : _GEN_7; // @[DisplayMultiplexer.scala 47:18 52:12]
  wire [3:0] select = _T ? 4'h1 : _GEN_8; // @[DisplayMultiplexer.scala 47:18 49:12]
  wire [6:0] sevSeg = sevModule_io_out; // @[DisplayMultiplexer.scala 12:27 43:10]
  SevenSegDec sevModule ( // @[DisplayMultiplexer.scala 27:25]
    .io_in(sevModule_io_in),
    .io_out(sevModule_io_out)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 65:13]
  assign io_an = ~select; // @[DisplayMultiplexer.scala 66:12]
  assign sevModule_io_in = 2'h0 == regCnt ? io_price[3:0] : _GEN_4; // @[DisplayMultiplexer.scala 29:18 31:23]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 16:31]
      tickCounterReg <= 32'h0; // @[DisplayMultiplexer.scala 16:31]
    end else if (tick) begin // @[DisplayMultiplexer.scala 23:15]
      tickCounterReg <= 32'h0; // @[DisplayMultiplexer.scala 24:20]
    end else begin
      tickCounterReg <= _tickCounterReg_T_1; // @[DisplayMultiplexer.scala 22:18]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 19:23]
      regCnt <= 2'h0; // @[DisplayMultiplexer.scala 19:23]
    end else if (tick) begin // @[DisplayMultiplexer.scala 23:15]
      regCnt <= _regCnt_T_1; // @[DisplayMultiplexer.scala 25:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  tickCounterReg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regCnt = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [6:0]  io_seg,
  output [3:0]  io_an
);
  wire  dispMux_clock; // @[Display.scala 15:23]
  wire  dispMux_reset; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_sum; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_price; // @[Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 19:26]
  assign dispMux_io_price = io_sw[7:0]; // @[Display.scala 18:28]
endmodule
