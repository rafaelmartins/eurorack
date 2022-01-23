/*
 * SPDX-FileCopyrightText: 2021-2022 Rafael G. Martins <rafael@rafaelmartins.eng.br>
 * SPDX-License-Identifier: CERN-OHL-S-2.0
 */

include <../../../share/openscad/eurorack-pcb-holder.scad>

hole_spacing = 12.7;

// must print two of this
eurorack_pcb_holder(hole_spacing);
