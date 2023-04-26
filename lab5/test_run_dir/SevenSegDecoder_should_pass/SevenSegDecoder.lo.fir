FIRRTL version 1.1.0
circuit SevenSegDecoder :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<4>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    node _T = eq(io_sw, UInt<1>("h0")) @[SevenSegDecoder.scala 14:15]
    node _T_1 = eq(io_sw, UInt<1>("h1")) @[SevenSegDecoder.scala 16:22]
    node _T_2 = eq(io_sw, UInt<2>("h2")) @[SevenSegDecoder.scala 18:21]
    node _T_3 = eq(io_sw, UInt<2>("h3")) @[SevenSegDecoder.scala 20:21]
    node _T_4 = eq(io_sw, UInt<3>("h4")) @[SevenSegDecoder.scala 22:21]
    node _T_5 = eq(io_sw, UInt<3>("h5")) @[SevenSegDecoder.scala 24:21]
    node _T_6 = eq(io_sw, UInt<3>("h6")) @[SevenSegDecoder.scala 26:21]
    node _T_7 = eq(io_sw, UInt<3>("h7")) @[SevenSegDecoder.scala 28:21]
    node _T_8 = eq(io_sw, UInt<4>("h8")) @[SevenSegDecoder.scala 30:21]
    node _T_9 = eq(io_sw, UInt<4>("h9")) @[SevenSegDecoder.scala 32:21]
    node _T_10 = eq(io_sw, UInt<4>("ha")) @[SevenSegDecoder.scala 34:21]
    node _T_11 = eq(io_sw, UInt<4>("hb")) @[SevenSegDecoder.scala 36:21]
    node _T_12 = eq(io_sw, UInt<4>("hc")) @[SevenSegDecoder.scala 38:21]
    node _T_13 = eq(io_sw, UInt<4>("hd")) @[SevenSegDecoder.scala 40:21]
    node _T_14 = eq(io_sw, UInt<4>("he")) @[SevenSegDecoder.scala 42:21]
    node _T_15 = eq(io_sw, UInt<4>("hf")) @[SevenSegDecoder.scala 44:21]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<7>("h0")) @[SevenSegDecoder.scala 44:36 45:12 11:27]
    node _GEN_1 = mux(_T_14, UInt<7>("h7b"), _GEN_0) @[SevenSegDecoder.scala 42:36 43:12]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[SevenSegDecoder.scala 40:36 41:12]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[SevenSegDecoder.scala 38:36 39:12]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[SevenSegDecoder.scala 36:36 37:12]
    node _GEN_5 = mux(_T_10, UInt<7>("h77"), _GEN_4) @[SevenSegDecoder.scala 34:36 35:12]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[SevenSegDecoder.scala 32:36 33:12]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[SevenSegDecoder.scala 30:36 31:12]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[SevenSegDecoder.scala 28:36 29:12]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[SevenSegDecoder.scala 26:36 27:12]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[SevenSegDecoder.scala 24:36 25:12]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[SevenSegDecoder.scala 22:36 23:12]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[SevenSegDecoder.scala 20:36 21:12]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[SevenSegDecoder.scala 18:36 19:12]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[SevenSegDecoder.scala 16:37 17:12]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[SevenSegDecoder.scala 14:30 15:12]
    node sevSeg = _GEN_15 @[SevenSegDecoder.scala 11:27]
    node _io_seg_T = not(sevSeg) @[SevenSegDecoder.scala 49:13]
    io_seg <= _io_seg_T @[SevenSegDecoder.scala 49:10]
    io_an <= UInt<4>("he") @[SevenSegDecoder.scala 50:9]
