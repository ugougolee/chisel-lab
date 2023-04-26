import chisel3._
import chisel3.util._
import chisel.lib.uart._

/**
  * This is the top level to develop the display multiplexing circuit.
  * The multiplexing circuit is in the DisplayMultiplexer.
  */


class SerialPort(frequ: Int) extends Module {
  val io = IO(new Bundle {
    val tx = Output(Bool())
    val led = Output(Bool())
  })
  io.tx := true.B
  io.led := true.B
}

val uart = Module(new BufferedTx(100000000, 115200))

uart.io.channel.valid := true.B
uart.io.channel.bits := '0'.U

// generate Verilog
object SerialPort extends App {
  emitVerilog(new SerialPort(100000000))
}