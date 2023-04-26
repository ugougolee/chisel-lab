FIRRTL version 1.1.0
circuit Mux4 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_sel : UInt<1>
    output io_y : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[Mux2.scala 17:16]
    node _GEN_0 = mux(_T, io_b, io_a) @[Mux2.scala 17:25 18:10 16:8]
    io_y <= _GEN_0

  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    inst Comp1 of Mux2 @[Mux4.scala 21:21]
    inst Comp2 of Mux2 @[Mux4.scala 22:21]
    inst Comp3 of Mux2 @[Mux4.scala 23:21]
    node _T = eq(io_sel, UInt<1>("h0")) @[Mux4.scala 37:16]
    node _T_1 = eq(io_sel, UInt<1>("h1")) @[Mux4.scala 38:23]
    node _T_2 = eq(io_sel, UInt<2>("h2")) @[Mux4.scala 40:23]
    node _GEN_0 = mux(_T_2, UInt<1>("h1"), UInt<1>("h1")) @[Mux4.scala 40:32 41:18 44:18]
    node _GEN_1 = mux(_T_2, UInt<1>("h0"), UInt<1>("h1")) @[Mux4.scala 34:16 40:32 43:18]
    node _GEN_2 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Mux4.scala 33:16 38:32 39:18]
    node _GEN_3 = mux(_T_1, UInt<1>("h0"), _GEN_0) @[Mux4.scala 35:16 38:32]
    node _GEN_4 = mux(_T_1, UInt<1>("h0"), _GEN_1) @[Mux4.scala 34:16 38:32]
    node _GEN_5 = mux(_T, UInt<1>("h0"), _GEN_2) @[Mux4.scala 33:16 37:25]
    node _GEN_6 = mux(_T, UInt<1>("h0"), _GEN_3) @[Mux4.scala 35:16 37:25]
    node _GEN_7 = mux(_T, UInt<1>("h0"), _GEN_4) @[Mux4.scala 34:16 37:25]
    io_y <= Comp3.io_y @[Mux4.scala 47:8]
    Comp1.clock <= clock
    Comp1.reset <= reset
    Comp1.io_a <= io_a @[Mux4.scala 25:14]
    Comp1.io_b <= io_b @[Mux4.scala 26:14]
    Comp1.io_sel <= _GEN_5
    Comp2.clock <= clock
    Comp2.reset <= reset
    Comp2.io_a <= io_c @[Mux4.scala 27:14]
    Comp2.io_b <= io_d @[Mux4.scala 28:14]
    Comp2.io_sel <= _GEN_7
    Comp3.clock <= clock
    Comp3.reset <= reset
    Comp3.io_a <= Comp1.io_y @[Mux4.scala 30:14]
    Comp3.io_b <= Comp2.io_y @[Mux4.scala 31:14]
    Comp3.io_sel <= _GEN_6
