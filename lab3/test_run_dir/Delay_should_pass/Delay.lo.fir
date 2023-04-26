FIRRTL version 1.1.0
circuit Delay :
  module Delay :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    output io_dout : UInt<8>

    reg res : UInt<8>, clock with :
      reset => (UInt<1>("h0"), res) @[Delay.scala 9:20]
    node _res_T = dshr(io_din, res) @[Delay.scala 12:16]
    node _res_T_1 = bits(_res_T, 0, 0) @[Delay.scala 12:16]
    node _res_T_2 = dshr(io_din, res) @[Delay.scala 13:16]
    node _res_T_3 = bits(_res_T_2, 0, 0) @[Delay.scala 13:16]
    io_dout <= res @[Delay.scala 22:11]
    res <= mux(reset, UInt<8>("h0"), _res_T_3) @[Delay.scala 9:{20,20} 13:7]
