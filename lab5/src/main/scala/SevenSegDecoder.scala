import chisel3._
import chisel3.util._

class SevenSegDecoder extends Module {
  val io = IO(new Bundle {
    val sw = Input(UInt(4.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault(0.U(7.W))

  // ***** your code starts here *****
  when (io.sw === "b0000".U) { //0
    sevSeg := "b0111111".U
  } .elsewhen (io.sw === "b0001".U) { //1
    sevSeg := "b0000110".U
  } .elsewhen(io.sw === "b0010".U) { //2
    sevSeg := "b1011011".U
  } .elsewhen(io.sw === "b0011".U) { //3
    sevSeg := "b1001111".U
  } .elsewhen(io.sw === "b0100".U) { //4
    sevSeg := "b1100110".U
  } .elsewhen(io.sw === "b0101".U) { //5
    sevSeg := "b1101101".U
  } .elsewhen(io.sw === "b0110".U) { //6
    sevSeg := "b1111101".U
  } .elsewhen(io.sw === "b0111".U) { //7
    sevSeg := "b0000111".U
  } .elsewhen(io.sw === "b1000".U) { //8
    sevSeg := "b1111111".U
  } .elsewhen(io.sw === "b1001".U) { //9
    sevSeg := "b1101111".U
  } .elsewhen(io.sw === "b1010".U) { //a
    sevSeg := "b1110111".U
  } .elsewhen(io.sw === "b1011".U) { //b
    sevSeg := "b1111100".U
  } .elsewhen(io.sw === "b1100".U) { //c
    sevSeg := "b0111001".U
  } .elsewhen(io.sw === "b1101".U) { //d
    sevSeg := "b1011110".U
  } .elsewhen(io.sw === "b1110".U) { //e
    sevSeg := "b1111011".U
  } .elsewhen(io.sw === "b1111".U) { //f
    sevSeg := "b1110001".U
  }
  // ***** your code ends here *****

  io.seg := ~sevSeg
  io.an := "b1110".U
}

// generate Verilog
object SevenSegDecoder extends App {
  emitVerilog(new SevenSegDecoder())
}


