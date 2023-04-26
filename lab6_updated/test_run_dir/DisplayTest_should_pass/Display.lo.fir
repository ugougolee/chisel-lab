FIRRTL version 1.1.0
circuit Display :
  module DisplayMultiplexer :
    input clock : Clock
    input reset : UInt<1>
    input io_sum : UInt<8>
    input io_price : UInt<8>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    node sevSeg = UInt<7>("h7f") @[DisplayMultiplexer.scala 12:{27,27}]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 20:13]
    node select = UInt<4>("h1") @[DisplayMultiplexer.scala 13:{27,27}]
    node _io_an_T = not(select) @[DisplayMultiplexer.scala 21:12]
    io_seg <= _io_seg_T @[DisplayMultiplexer.scala 20:10]
    io_an <= _io_an_T @[DisplayMultiplexer.scala 21:9]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<16>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst dispMux of DisplayMultiplexer @[Display.scala 15:23]
    node _dispMux_io_price_T = bits(io_sw, 7, 0) @[Display.scala 18:28]
    node _dispMux_io_sum_T = bits(io_sw, 15, 8) @[Display.scala 19:26]
    io_seg <= dispMux.io_seg @[Display.scala 22:10]
    io_an <= dispMux.io_an @[Display.scala 23:9]
    dispMux.clock <= clock
    dispMux.reset <= reset
    dispMux.io_sum <= _dispMux_io_sum_T @[Display.scala 19:18]
    dispMux.io_price <= _dispMux_io_price_T @[Display.scala 18:20]
