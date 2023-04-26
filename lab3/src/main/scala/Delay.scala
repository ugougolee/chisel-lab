import chisel3._

class Delay extends Module {
  val io = IO(new Bundle {
    val din = Input(UInt(8.W))
    val dout = Output(UInt(8.W))
  })

  // val res = RegInit(0.U(8.W))
  val res = Wire(UInt())

  // ***** your code starts here *****
  io.din := res


  // val x = RegNext(res)
  // val y = RegNext(x)

  // below is dummy code to make this example compile
  // res := io.din

  // ***** your code ends here *****

  io.dout := res
}