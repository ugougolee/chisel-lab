import chisel3._
import chisel3.util._

class DisplayMultiplexer(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(8.W))
    val price = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault("b1111111".U(7.W))
  val select = WireDefault("b0001".U(4.W))

  // *** your code starts here
  val tickCounterReg = RegInit(0.U(32.W))
  val tick = tickCounterReg === (maxCount - 1).U

  val regCnt = RegInit(0.U(2.W))


  tickCounterReg := tickCounterReg + 1.U
  when (tick) {
    tickCounterReg := 0.U
    regCnt := regCnt + 1.U
  }
  val sevModule = Module(new SevenSegDec())
  sevModule.io.in := "b0000".U
  switch(regCnt) { // sending into decoder
    is (0.U) {
      sevModule.io.in := io.price(3,0)
    }
    is (1.U) {
      sevModule.io.in := io.price(7,4)
    }
    is (2.U) {
      sevModule.io.in := io.sum(3,0)
    }
    is (3.U) {
      sevModule.io.in := io.sum(7,4)
    }
  }
  sevSeg := sevModule.io.out // output



  switch(regCnt) {
    is(0.U){
    select :="b0001".U
  }
  is (1.U) {
    select := "b0010".U
  }
    is (2.U) {
      select := "b0100".U
    }
    is (3.U) {
      select := "b1000".U
    }
}


  // *** your code ends here

  io.seg := ~sevSeg
  io.an := ~select
}
