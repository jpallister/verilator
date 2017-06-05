// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed into the Public Domain, for any use,
// without warranty, 2017 by James Pallister.

typedef logic logic_alias;

module t;
   logic_alias [6:1] signal;

   initial begin
      assign signal[6:1] = 'b100001;

      if (signal == 'b100001) begin
        $write("*-* All Finished *-*\n");
        $finish;
      end else begin
        $stop;
      end
   end
endmodule

