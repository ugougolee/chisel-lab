FIRRTL version 1.1.0
circuit Count6 :
  module Count6 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg res : UInt<4>, clock with :
      reset => (UInt<1>("h0"), res) @[Count6.scala 8:20]
    node _res_T = eq(res, UInt<3>("h6")) @[Count6.scala 11:18]
    node _res_T_1 = add(res, UInt<1>("h1")) @[Count6.scala 11:36]
    node _res_T_2 = tail(_res_T_1, 1) @[Count6.scala 11:36]
    node _res_T_3 = mux(_res_T, UInt<1>("h0"), _res_T_2) @[Count6.scala 11:13]
    io_dout <= pad(res, 8) @[Count6.scala 16:11]
    res <= mux(reset, UInt<4>("h0"), _res_T_3) @[Count6.scala 8:{20,20} 11:7]
