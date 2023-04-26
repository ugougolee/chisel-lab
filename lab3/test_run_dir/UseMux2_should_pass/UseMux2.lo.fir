FIRRTL version 1.1.0
circuit UseMux2 :
  module UseMux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<1>
    output io_dout : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[UseMux2.scala 17:13]
    node _GEN_0 = mux(_T, UInt<1>("h0"), UInt<1>("h1")) @[UseMux2.scala 17:22 18:9 20:9]
    node res = _GEN_0 @[UseMux2.scala 12:17]
    io_dout <= res @[UseMux2.scala 28:11]
