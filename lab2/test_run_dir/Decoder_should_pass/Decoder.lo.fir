FIRRTL version 1.1.0
circuit Decoder :
  module Decoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<2>
    output io_out : UInt<4>

    node _T = eq(io_sel, UInt<1>("h0")) @[Decoder.scala 14:13]
    node _T_1 = eq(io_sel, UInt<1>("h1")) @[Decoder.scala 16:19]
    node _T_2 = eq(io_sel, UInt<2>("h2")) @[Decoder.scala 18:20]
    node _GEN_0 = mux(_T_2, UInt<3>("h4"), UInt<4>("h8")) @[Decoder.scala 18:29 19:9 21:9]
    node _GEN_1 = mux(_T_1, UInt<2>("h2"), _GEN_0) @[Decoder.scala 16:28 17:9]
    node _GEN_2 = mux(_T, UInt<1>("h1"), _GEN_1) @[Decoder.scala 14:22 15:9]
    node dec = _GEN_2 @[Decoder.scala 11:24]
    io_out <= dec @[Decoder.scala 25:10]
