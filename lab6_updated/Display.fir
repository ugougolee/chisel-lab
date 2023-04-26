circuit Display :
  module SevenSegDec :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<4>, out : UInt<7>}

    wire sevSeg : UInt @[SevenSegDec.scala 10:27]
    sevSeg <= UInt<1>("h0") @[SevenSegDec.scala 10:27]
    node _T = eq(io.in, UInt<1>("h0")) @[SevenSegDec.scala 13:14]
    when _T : @[SevenSegDec.scala 13:29]
      sevSeg <= UInt<6>("h3f") @[SevenSegDec.scala 14:12]
    else :
      node _T_1 = eq(io.in, UInt<1>("h1")) @[SevenSegDec.scala 15:20]
      when _T_1 : @[SevenSegDec.scala 15:35]
        sevSeg <= UInt<3>("h6") @[SevenSegDec.scala 16:12]
      else :
        node _T_2 = eq(io.in, UInt<2>("h2")) @[SevenSegDec.scala 17:20]
        when _T_2 : @[SevenSegDec.scala 17:35]
          sevSeg <= UInt<7>("h5b") @[SevenSegDec.scala 18:12]
        else :
          node _T_3 = eq(io.in, UInt<2>("h3")) @[SevenSegDec.scala 19:20]
          when _T_3 : @[SevenSegDec.scala 19:35]
            sevSeg <= UInt<7>("h4f") @[SevenSegDec.scala 20:12]
          else :
            node _T_4 = eq(io.in, UInt<3>("h4")) @[SevenSegDec.scala 21:20]
            when _T_4 : @[SevenSegDec.scala 21:35]
              sevSeg <= UInt<7>("h66") @[SevenSegDec.scala 22:12]
            else :
              node _T_5 = eq(io.in, UInt<3>("h5")) @[SevenSegDec.scala 23:20]
              when _T_5 : @[SevenSegDec.scala 23:35]
                sevSeg <= UInt<7>("h6d") @[SevenSegDec.scala 24:12]
              else :
                node _T_6 = eq(io.in, UInt<3>("h6")) @[SevenSegDec.scala 25:20]
                when _T_6 : @[SevenSegDec.scala 25:35]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDec.scala 26:12]
                else :
                  node _T_7 = eq(io.in, UInt<3>("h7")) @[SevenSegDec.scala 27:20]
                  when _T_7 : @[SevenSegDec.scala 27:35]
                    sevSeg <= UInt<3>("h7") @[SevenSegDec.scala 28:12]
                  else :
                    node _T_8 = eq(io.in, UInt<4>("h8")) @[SevenSegDec.scala 29:20]
                    when _T_8 : @[SevenSegDec.scala 29:35]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDec.scala 30:12]
                    else :
                      node _T_9 = eq(io.in, UInt<4>("h9")) @[SevenSegDec.scala 31:20]
                      when _T_9 : @[SevenSegDec.scala 31:35]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDec.scala 32:12]
                      else :
                        node _T_10 = eq(io.in, UInt<4>("ha")) @[SevenSegDec.scala 33:20]
                        when _T_10 : @[SevenSegDec.scala 33:35]
                          sevSeg <= UInt<7>("h77") @[SevenSegDec.scala 34:12]
                        else :
                          node _T_11 = eq(io.in, UInt<4>("hb")) @[SevenSegDec.scala 35:20]
                          when _T_11 : @[SevenSegDec.scala 35:35]
                            sevSeg <= UInt<7>("h7c") @[SevenSegDec.scala 36:12]
                          else :
                            node _T_12 = eq(io.in, UInt<4>("hc")) @[SevenSegDec.scala 37:20]
                            when _T_12 : @[SevenSegDec.scala 37:35]
                              sevSeg <= UInt<6>("h39") @[SevenSegDec.scala 38:12]
                            else :
                              node _T_13 = eq(io.in, UInt<4>("hd")) @[SevenSegDec.scala 39:20]
                              when _T_13 : @[SevenSegDec.scala 39:35]
                                sevSeg <= UInt<7>("h5e") @[SevenSegDec.scala 40:12]
                              else :
                                node _T_14 = eq(io.in, UInt<4>("he")) @[SevenSegDec.scala 41:20]
                                when _T_14 : @[SevenSegDec.scala 41:35]
                                  sevSeg <= UInt<7>("h7b") @[SevenSegDec.scala 42:12]
                                else :
                                  node _T_15 = eq(io.in, UInt<4>("hf")) @[SevenSegDec.scala 43:20]
                                  when _T_15 : @[SevenSegDec.scala 43:35]
                                    sevSeg <= UInt<7>("h71") @[SevenSegDec.scala 44:12]
    io.out <= sevSeg @[SevenSegDec.scala 48:10]

  module DisplayMultiplexer :
    input clock : Clock
    input reset : Reset
    output io : { flip sum : UInt<8>, flip price : UInt<8>, seg : UInt<7>, an : UInt<4>}

    wire sevSeg : UInt<7> @[DisplayMultiplexer.scala 12:27]
    sevSeg <= UInt<7>("h7f") @[DisplayMultiplexer.scala 12:27]
    wire select : UInt<4> @[DisplayMultiplexer.scala 13:27]
    select <= UInt<4>("h1") @[DisplayMultiplexer.scala 13:27]
    reg tickCounterReg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h0")) @[DisplayMultiplexer.scala 16:31]
    node tick = eq(tickCounterReg, UInt<17>("h1869f")) @[DisplayMultiplexer.scala 17:29]
    reg regCnt : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[DisplayMultiplexer.scala 19:23]
    node _tickCounterReg_T = add(tickCounterReg, UInt<1>("h1")) @[DisplayMultiplexer.scala 22:36]
    node _tickCounterReg_T_1 = tail(_tickCounterReg_T, 1) @[DisplayMultiplexer.scala 22:36]
    tickCounterReg <= _tickCounterReg_T_1 @[DisplayMultiplexer.scala 22:18]
    when tick : @[DisplayMultiplexer.scala 23:15]
      tickCounterReg <= UInt<1>("h0") @[DisplayMultiplexer.scala 24:20]
      node _regCnt_T = add(regCnt, UInt<1>("h1")) @[DisplayMultiplexer.scala 25:22]
      node _regCnt_T_1 = tail(_regCnt_T, 1) @[DisplayMultiplexer.scala 25:22]
      regCnt <= _regCnt_T_1 @[DisplayMultiplexer.scala 25:12]
    inst sevModule of SevenSegDec @[DisplayMultiplexer.scala 27:25]
    sevModule.clock <= clock
    sevModule.reset <= reset
    sevModule.io.in <= UInt<1>("h0") @[DisplayMultiplexer.scala 28:19]
    node _T = eq(UInt<1>("h0"), regCnt) @[DisplayMultiplexer.scala 29:18]
    when _T : @[DisplayMultiplexer.scala 29:18]
      node _sevModule_io_in_T = bits(io.price, 3, 0) @[DisplayMultiplexer.scala 31:34]
      sevModule.io.in <= _sevModule_io_in_T @[DisplayMultiplexer.scala 31:23]
    else :
      node _T_1 = eq(UInt<1>("h1"), regCnt) @[DisplayMultiplexer.scala 29:18]
      when _T_1 : @[DisplayMultiplexer.scala 29:18]
        node _sevModule_io_in_T_1 = bits(io.price, 7, 4) @[DisplayMultiplexer.scala 34:34]
        sevModule.io.in <= _sevModule_io_in_T_1 @[DisplayMultiplexer.scala 34:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), regCnt) @[DisplayMultiplexer.scala 29:18]
        when _T_2 : @[DisplayMultiplexer.scala 29:18]
          node _sevModule_io_in_T_2 = bits(io.sum, 3, 0) @[DisplayMultiplexer.scala 37:32]
          sevModule.io.in <= _sevModule_io_in_T_2 @[DisplayMultiplexer.scala 37:23]
        else :
          node _T_3 = eq(UInt<2>("h3"), regCnt) @[DisplayMultiplexer.scala 29:18]
          when _T_3 : @[DisplayMultiplexer.scala 29:18]
            node _sevModule_io_in_T_3 = bits(io.sum, 7, 4) @[DisplayMultiplexer.scala 40:32]
            sevModule.io.in <= _sevModule_io_in_T_3 @[DisplayMultiplexer.scala 40:23]
    sevSeg <= sevModule.io.out @[DisplayMultiplexer.scala 43:10]
    node _T_4 = eq(UInt<1>("h0"), regCnt) @[DisplayMultiplexer.scala 47:18]
    when _T_4 : @[DisplayMultiplexer.scala 47:18]
      select <= UInt<1>("h1") @[DisplayMultiplexer.scala 49:12]
    else :
      node _T_5 = eq(UInt<1>("h1"), regCnt) @[DisplayMultiplexer.scala 47:18]
      when _T_5 : @[DisplayMultiplexer.scala 47:18]
        select <= UInt<2>("h2") @[DisplayMultiplexer.scala 52:12]
      else :
        node _T_6 = eq(UInt<2>("h2"), regCnt) @[DisplayMultiplexer.scala 47:18]
        when _T_6 : @[DisplayMultiplexer.scala 47:18]
          select <= UInt<3>("h4") @[DisplayMultiplexer.scala 55:14]
        else :
          node _T_7 = eq(UInt<2>("h3"), regCnt) @[DisplayMultiplexer.scala 47:18]
          when _T_7 : @[DisplayMultiplexer.scala 47:18]
            select <= UInt<4>("h8") @[DisplayMultiplexer.scala 58:14]
    node _io_seg_T = not(sevSeg) @[DisplayMultiplexer.scala 65:13]
    io.seg <= _io_seg_T @[DisplayMultiplexer.scala 65:10]
    node _io_an_T = not(select) @[DisplayMultiplexer.scala 66:12]
    io.an <= _io_an_T @[DisplayMultiplexer.scala 66:9]

  module Display :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<16>, seg : UInt<7>, an : UInt<4>}

    inst dispMux of DisplayMultiplexer @[Display.scala 15:23]
    dispMux.clock <= clock
    dispMux.reset <= reset
    node _dispMux_io_price_T = bits(io.sw, 7, 0) @[Display.scala 18:28]
    dispMux.io.price <= _dispMux_io_price_T @[Display.scala 18:20]
    node _dispMux_io_sum_T = bits(io.sw, 15, 8) @[Display.scala 19:26]
    dispMux.io.sum <= _dispMux_io_sum_T @[Display.scala 19:18]
    io.seg <= dispMux.io.seg @[Display.scala 22:10]
    io.an <= dispMux.io.an @[Display.scala 23:9]

