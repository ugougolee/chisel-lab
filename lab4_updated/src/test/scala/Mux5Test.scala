import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Mux5Test extends AnyFlatSpec with ChiselScalatestTester {
  "Mux5 " should "pass" in {
    test(new Mux5()) { dut =>
      // write your test here

      // dut.io.sel.poke(0.U)
      // dut.clock.step(1)
      // dut.io.y.expect()

      /*for (x <- 0 to 15) {
        for (sel <- 0 to 4) {
          dut.io.a.poke((x & 0x1).U)
          dut.io.b.poke(((x >> 1) & 0x1).U)
          dut.io.c.poke(((x >> 2) & 0x1).U)
          dut.io.d.poke(((x >> 3) & 0x1).U)
          dut.io.e.poke(((x >> 4) & 0x1).U)

          dut.clock.step(1)

          val res = (x >> sel) & 0x1

          dut.io.y.expect(res.U)

        }
      }*/
    }
  }
}
