import chisel3._

/**
  * Use Mux2 components to build a 4:1 multiplexer
  */

class Mux4 extends Module {
  val io = IO(new Bundle {
    val a = Input(UInt(1.W))
    val b = Input(UInt(1.W))
    val c = Input(UInt(1.W))
    val d = Input(UInt(1.W))
    val sel = Input(UInt(2.W))
    val y = Output(UInt(1.W))
  })

  // ***** your code starts here *****

  // create a Mux4 component out of Mux2 components
  // and connect the input and output ports.
  val Comp1 = Module(new Mux2)
  val Comp2 = Module(new Mux2)
  val Comp3 = Module(new Mux2)

  Comp1.io.a := io.a
  Comp1.io.b := io.b
  Comp2.io.a := io.c
  Comp2.io.b := io.d

  Comp3.io.a := Comp1.io.y
  Comp3.io.b := Comp2.io.y

  Comp1.io.sel := 0.U
  Comp2.io.sel := 0.U
  Comp3.io.sel := 0.U

  when (io.sel === 0.U) {
  } .elsewhen (io.sel === 1.U) {
    Comp1.io.sel := 1.U
  } .elsewhen (io.sel === 2.U) {
    Comp3.io.sel := 1.U
  } .otherwise {
    Comp2.io.sel := 1.U
    Comp3.io.sel := 1.U
  }

  io.y := Comp3.io.y


  // below is dummy code to make this example compile
  // io.y := io.c

  // ***** your code ends here *****
}