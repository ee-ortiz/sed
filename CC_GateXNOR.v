/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniXNORes.edu.co
//# 
//# This program is free software: you can redistribute it XNOR/or modify
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
module CC_GateXNOR (
//////////// OUTPUTS //////////
	CC_GateXNOR_z_Out,
//////////// INPUTS //////////
	CC_GateXNOR_a_In,
	CC_GateXNOR_b_In
);
//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  PORT declarations
//=======================================================
output	CC_GateXNOR_z_Out;
input 	CC_GateXNOR_a_In;
input 	CC_GateXNOR_b_In;
//=======================================================
//  REG/WIRE declarations
//=======================================================
//wire CC_GATEXNOR1_wire, CC_GATEXNOR2_wire;
//=======================================================
wire CC_GATEXNOR1_wire, CC_GATEXNOR2_wire;
//  Structural coding
//=======================================================
assign CC_GATEXNOR1_wire = (~CC_GateXNOR_a_In & CC_GateXNOR_b_In);
assign CC_GATEXNOR2_wire = (CC_GateXNOR_a_In & ~CC_GateXNOR_b_In);
assign CC_GateXNOR_z_Out = ~(CC_GATEXNOR1_wire | CC_GATEXNOR2_wire); 

endmodule

