
// Efinity Top-level template
// Version: 2025.2.288.2.10
// Date: 2026-07-14 10:20

// Copyright (C) 2013 - 2025 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as T8F81.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  T8F81
//     #4)  Insert design content.


module T8F81
(
  (* syn_peri_port = 0 *) input clk,
  (* syn_peri_port = 0 *) input rst_n,
  (* syn_peri_port = 0 *) output led1
);


endmodule

