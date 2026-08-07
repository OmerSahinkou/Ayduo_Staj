
// Efinity Top-level template
// Version: 2025.2.288.2.10
// Date: 2026-08-07 17:04

// Copyright (C) 2013 - 2025 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as Staj_Projesi.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  Staj_Projesi
//     #4)  Insert design content.


module Staj_Projesi
(
  (* syn_peri_port = 0 *) input clk_i,
  (* syn_peri_port = 0 *) input miso_i,
  (* syn_peri_port = 0 *) input rst_n_i,
  (* syn_peri_port = 0 *) input rx,
  (* syn_peri_port = 0 *) input switch_in,
  (* syn_peri_port = 0 *) output [3:0] LED,
  (* syn_peri_port = 0 *) output mosi_o,
  (* syn_peri_port = 0 *) output pwm_out_0,
  (* syn_peri_port = 0 *) output pwm_out_1,
  (* syn_peri_port = 0 *) output pwm_out_2,
  (* syn_peri_port = 0 *) output sclk_o,
  (* syn_peri_port = 0 *) output spi_cs_n_o,
  (* syn_peri_port = 0 *) output tx
);


endmodule

