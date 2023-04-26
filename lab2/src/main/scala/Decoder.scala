import chisel3._
import chisel3.util._

class Decoder extends Module {
  val io = IO(new Bundle {
    val sel = Input(UInt(2.W))
    val out = Output(UInt(4.W))
  })

  val sel = io.sel
  val dec = WireDefault(0.U)

  // ***** your code starts here *****
  when (sel === 0.U) {
    dec := 1.U
  } .elsewhen(sel === 1.U) {
    dec := 2.U
  } .elsewhen (sel === 2.U) {
    dec := 4.U
  } .otherwise {
    dec := 8.U
  }
  // ***** your code ends here *****

  io.out := dec
}


