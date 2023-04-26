import chisel3._

class AddSub extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(4.W))
    val b = Input(UInt(4.W))
    val selAdd = Input(Bool())
    val y = Output(UInt(4.W))
  })

  val a = io.a
  val b = io.b
  val selAdd = io.selAdd
  val res = WireInit(0.U(4.W))

  // ***** your code starts here *****

  when (selAdd === true.B) {
   res := a+b
  } .otherwise {
    res := a-b
  }

  // ***** your code ends here *****

  io.y := res
}


