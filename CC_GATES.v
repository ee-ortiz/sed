/*######################################################################
//#	G0B1T: HDL EXAMPLES. 2018.
//######################################################################
//# Copyright (C) 2018. F.E.Segura-Quijano (FES) fsegura@uniandes.edu.co
//# 
//# This program is free software: you can redistribute it and/or modify
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
module CC_GATES (
//////////// OUTPUTS //////////
	CC_GATES_and1_Out,
	CC_GATES_and2_Out,
	CC_GATES_or1_Out,
	CC_GATES_xor1_Out,
	CC_GATES_xor2_Out,
	CC_GATES_xor3_Out,
	CC_GATES_nand1_Out,
	CC_GATES_nor1_Out,
//////////// INPUTS //////////
	CC_GATES_a_In,
	CC_GATES_b_In
);
//=======================================================
//  PARAMETER declarations
//=======================================================

//=======================================================
//  PORT declarations
//=======================================================
output CC_GATES_and1_Out;
output reg CC_GATES_and2_Out;
output CC_GATES_or1_Out;
output CC_GATES_xor1_Out;
output CC_GATES_xor2_Out;
output CC_GATES_xor3_Out;
output CC_GATES_nand1_Out;
output CC_GATES_nor1_Out;
input 	CC_GATES_a_In;
input 	CC_GATES_b_In;
//=======================================================
//  REG/WIRE declarations
//=======================================================
wire CC_GATES_xor1_wire, CC_GATES_xor2_wire;
//=======================================================
//  Structural coding
//=======================================================
// CC_GATES_and1_Out
assign CC_GATES_and1_Out = CC_GATES_a_In & CC_GATES_b_In;
// CC_GATES_and2_Out
always @(*)
begin
	if ((CC_GATES_a_In == 1'b1) && (CC_GATES_b_In == 1'b1))
		CC_GATES_and2_Out = 1'b1;
	else
		CC_GATES_and2_Out = 1'b0;
end
// CC_GATES_or1_Out
assign CC_GATES_or1_Out = CC_GATES_a_In | CC_GATES_b_In;
// CC_GATES_xor1_Out
assign CC_GATES_xor1_wire = (~CC_GATES_a_In & CC_GATES_b_In);
assign CC_GATES_xor2_wire = (CC_GATES_a_In & ~CC_GATES_b_In);
assign CC_GATES_xor1_Out = CC_GATES_xor1_wire | CC_GATES_xor2_wire; 
// CC_GATES_xor2_Out
assign CC_GATES_xor2_Out = CC_GATES_a_In ^ CC_GATES_b_In;
// CC_GATES_xor3_Out
assign CC_GATES_xor3_Out = (~CC_GATES_a_In & CC_GATES_b_In) | (CC_GATES_a_In & ~CC_GATES_b_In);
// CC_GATES_nand1_Out
assign CC_GATES_nand1_Out = ~(CC_GATES_a_In & CC_GATES_b_In);
// CC_GATES_nor1_Out
assign CC_GATES_nor1_Out = ~(CC_GATES_a_In | CC_GATES_b_In);

endmodule

