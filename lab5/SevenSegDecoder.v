module SevenSegDecoder(
  input        clock,
  input        reset,
  input  [3:0] io_sw,
  output [6:0] io_seg,
  output [3:0] io_an
);
  wire [6:0] _GEN_0 = io_sw == 4'hf ? 7'h71 : 7'h0; // @[SevenSegDecoder.scala 44:36 45:12 11:27]
  wire [6:0] _GEN_1 = io_sw == 4'he ? 7'h7b : _GEN_0; // @[SevenSegDecoder.scala 42:36 43:12]
  wire [6:0] _GEN_2 = io_sw == 4'hd ? 7'h5e : _GEN_1; // @[SevenSegDecoder.scala 40:36 41:12]
  wire [6:0] _GEN_3 = io_sw == 4'hc ? 7'h39 : _GEN_2; // @[SevenSegDecoder.scala 38:36 39:12]
  wire [6:0] _GEN_4 = io_sw == 4'hb ? 7'h7c : _GEN_3; // @[SevenSegDecoder.scala 36:36 37:12]
  wire [6:0] _GEN_5 = io_sw == 4'ha ? 7'h77 : _GEN_4; // @[SevenSegDecoder.scala 34:36 35:12]
  wire [6:0] _GEN_6 = io_sw == 4'h9 ? 7'h6f : _GEN_5; // @[SevenSegDecoder.scala 32:36 33:12]
  wire [6:0] _GEN_7 = io_sw == 4'h8 ? 7'h7f : _GEN_6; // @[SevenSegDecoder.scala 30:36 31:12]
  wire [6:0] _GEN_8 = io_sw == 4'h7 ? 7'h7 : _GEN_7; // @[SevenSegDecoder.scala 28:36 29:12]
  wire [6:0] _GEN_9 = io_sw == 4'h6 ? 7'h7d : _GEN_8; // @[SevenSegDecoder.scala 26:36 27:12]
  wire [6:0] _GEN_10 = io_sw == 4'h5 ? 7'h6d : _GEN_9; // @[SevenSegDecoder.scala 24:36 25:12]
  wire [6:0] _GEN_11 = io_sw == 4'h4 ? 7'h66 : _GEN_10; // @[SevenSegDecoder.scala 22:36 23:12]
  wire [6:0] _GEN_12 = io_sw == 4'h3 ? 7'h4f : _GEN_11; // @[SevenSegDecoder.scala 20:36 21:12]
  wire [6:0] _GEN_13 = io_sw == 4'h2 ? 7'h5b : _GEN_12; // @[SevenSegDecoder.scala 18:36 19:12]
  wire [6:0] _GEN_14 = io_sw == 4'h1 ? 7'h6 : _GEN_13; // @[SevenSegDecoder.scala 16:37 17:12]
  wire [6:0] sevSeg = io_sw == 4'h0 ? 7'h3f : _GEN_14; // @[SevenSegDecoder.scala 14:30 15:12]
  assign io_seg = ~sevSeg; // @[SevenSegDecoder.scala 49:13]
  assign io_an = 4'he; // @[SevenSegDecoder.scala 50:9]
endmodule
