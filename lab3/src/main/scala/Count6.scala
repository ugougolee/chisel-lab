import chisel3._

class Count6 extends Module {
  val io = IO(new Bundle {
    val dout = Output(UInt(8.W))
  })

  val res = RegInit(0.U(4.W))

  // ***** your code starts here *****
  res := Mux(res === 6.U, 0.U, res + 1.U)
  // res := 0.U // dummy code to make it compile

  // ***** your code ends here *****

  io.dout := res
}