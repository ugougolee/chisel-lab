circuit SevenSegDecoder :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sw : UInt<4>, seg : UInt<7>, an : UInt<4>}

    wire sevSeg : UInt<7> @[SevenSegDecoder.scala 11:27]
    sevSeg <= UInt<7>("h0") @[SevenSegDecoder.scala 11:27]
    node _T = eq(io.sw, UInt<1>("h0")) @[SevenSegDecoder.scala 14:15]
    when _T : @[SevenSegDecoder.scala 14:30]
      sevSeg <= UInt<6>("h3f") @[SevenSegDecoder.scala 15:12]
    else :
      node _T_1 = eq(io.sw, UInt<1>("h1")) @[SevenSegDecoder.scala 16:22]
      when _T_1 : @[SevenSegDecoder.scala 16:37]
        sevSeg <= UInt<3>("h6") @[SevenSegDecoder.scala 17:12]
      else :
        node _T_2 = eq(io.sw, UInt<2>("h2")) @[SevenSegDecoder.scala 18:21]
        when _T_2 : @[SevenSegDecoder.scala 18:36]
          sevSeg <= UInt<7>("h5b") @[SevenSegDecoder.scala 19:12]
        else :
          node _T_3 = eq(io.sw, UInt<2>("h3")) @[SevenSegDecoder.scala 20:21]
          when _T_3 : @[SevenSegDecoder.scala 20:36]
            sevSeg <= UInt<7>("h4f") @[SevenSegDecoder.scala 21:12]
          else :
            node _T_4 = eq(io.sw, UInt<3>("h4")) @[SevenSegDecoder.scala 22:21]
            when _T_4 : @[SevenSegDecoder.scala 22:36]
              sevSeg <= UInt<7>("h66") @[SevenSegDecoder.scala 23:12]
            else :
              node _T_5 = eq(io.sw, UInt<3>("h5")) @[SevenSegDecoder.scala 24:21]
              when _T_5 : @[SevenSegDecoder.scala 24:36]
                sevSeg <= UInt<7>("h6d") @[SevenSegDecoder.scala 25:12]
              else :
                node _T_6 = eq(io.sw, UInt<3>("h6")) @[SevenSegDecoder.scala 26:21]
                when _T_6 : @[SevenSegDecoder.scala 26:36]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDecoder.scala 27:12]
                else :
                  node _T_7 = eq(io.sw, UInt<3>("h7")) @[SevenSegDecoder.scala 28:21]
                  when _T_7 : @[SevenSegDecoder.scala 28:36]
                    sevSeg <= UInt<3>("h7") @[SevenSegDecoder.scala 29:12]
                  else :
                    node _T_8 = eq(io.sw, UInt<4>("h8")) @[SevenSegDecoder.scala 30:21]
                    when _T_8 : @[SevenSegDecoder.scala 30:36]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDecoder.scala 31:12]
                    else :
                      node _T_9 = eq(io.sw, UInt<4>("h9")) @[SevenSegDecoder.scala 32:21]
                      when _T_9 : @[SevenSegDecoder.scala 32:36]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDecoder.scala 33:12]
                      else :
                        node _T_10 = eq(io.sw, UInt<4>("ha")) @[SevenSegDecoder.scala 34:21]
                        when _T_10 : @[SevenSegDecoder.scala 34:36]
                          sevSeg <= UInt<7>("h77") @[SevenSegDecoder.scala 35:12]
                        else :
                          node _T_11 = eq(io.sw, UInt<4>("hb")) @[SevenSegDecoder.scala 36:21]
                          when _T_11 : @[SevenSegDecoder.scala 36:36]
                            sevSeg <= UInt<7>("h7c") @[SevenSegDecoder.scala 37:12]
                          else :
                            node _T_12 = eq(io.sw, UInt<4>("hc")) @[SevenSegDecoder.scala 38:21]
                            when _T_12 : @[SevenSegDecoder.scala 38:36]
                              sevSeg <= UInt<6>("h39") @[SevenSegDecoder.scala 39:12]
                            else :
                              node _T_13 = eq(io.sw, UInt<4>("hd")) @[SevenSegDecoder.scala 40:21]
                              when _T_13 : @[SevenSegDecoder.scala 40:36]
                                sevSeg <= UInt<7>("h5e") @[SevenSegDecoder.scala 41:12]
                              else :
                                node _T_14 = eq(io.sw, UInt<4>("he")) @[SevenSegDecoder.scala 42:21]
                                when _T_14 : @[SevenSegDecoder.scala 42:36]
                                  sevSeg <= UInt<7>("h7b") @[SevenSegDecoder.scala 43:12]
                                else :
                                  node _T_15 = eq(io.sw, UInt<4>("hf")) @[SevenSegDecoder.scala 44:21]
                                  when _T_15 : @[SevenSegDecoder.scala 44:36]
                                    sevSeg <= UInt<7>("h71") @[SevenSegDecoder.scala 45:12]
    node _io_seg_T = not(sevSeg) @[SevenSegDecoder.scala 49:13]
    io.seg <= _io_seg_T @[SevenSegDecoder.scala 49:10]
    io.an <= UInt<4>("he") @[SevenSegDecoder.scala 50:9]

