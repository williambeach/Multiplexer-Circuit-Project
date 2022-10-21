LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux2to1_BeachWilliam IS
	PORT (
		-- Input ports
		x1, x2, s	: IN  STD_LOGIC;
		-- Output ports
		f			: OUT STD_LOGIC);
END Mux2to1_BeachWilliam;

ARCHITECTURE LogicFunc OF Mux2to1_BeachWilliam IS
BEGIN
	f <= ((s NAND s) NAND x1) NAND (s NAND x2) ;
END LogicFunc;
