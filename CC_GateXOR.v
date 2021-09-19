/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniXORes.edu.co
//# 
//# This program is free software: you can redistribute it XOR/or modify
//# it under the terms of the GNU General Public License as published by
//# the Free Software Foundation, version 3 of the License.
//#
//# This program is distributed in the hope that it will be useful,
//# but WITHOUT ANY WARRANTY; without even the implied warranty of
//# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//# GNU General Public License for more details.
//#
//# You should have received a copy of the GNU General Public License
//# along with this program.  If not, see <http://www.gnu.org/licenses/>
//####################################################################*/
//=======================================================
//  MODULE Definition
//=======================================================
module CC_GateXOR (
//////////// OUTPUTS //////////
	CC_GateXOR_z_Out,
//////////// INPUTS //////////
	CC_GateXOR_a_In,
	CC_GateXOR_b_In
);
//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  PORT declarations
//=======================================================
output	CC_GateXOR_z_Out;
input 	CC_GateXOR_a_In;
input 	CC_GateXOR_b_In;
//=======================================================
//  REG/WIRE declarations
//=======================================================
//wire CC_GATEXOR1_wire, CC_GATEXOR2_wire;
//=======================================================
wire CC_GATEXOR1_wire, CC_GATEXOR2_wire;
//  Structural coding
//=======================================================
assign CC_GATEXOR1_wire = (~CC_GateXOR_a_In & CC_GateXOR_b_In);
assign CC_GATEXOR2_wire = (CC_GateXOR_a_In & ~CC_GateXOR_b_In);
assign CC_GateXOR_z_Out = CC_GATEXOR1_wire | CC_GATEXOR2_wire; 

endmodule

