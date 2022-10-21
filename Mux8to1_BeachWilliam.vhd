LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Mux8to1_BeachWilliam IS
	PORT (J0, J1, J2, J3, J4, J5, J6, J7, t0, t1, t2 :IN STD_LOGIC;
		  G											 :OUT STD_LOGIC);
END Mux8to1_BeachWilliam;

ARCHITECTURE LogicFunc2 OF Mux8to1_BeachWilliam IS
SIGNAL g1, g2	: STD_LOGIC;
COMPONENT Mux4to1_BeachWilliam
	PORT(I0, I1, I2, I3, s0, s1	: IN STD_LOGIC;
		 F						: OUT STD_LOGIC);
END COMPONENT;
COMPONENT Mux2to1_BeachWilliam
	PORT(x1, x2, s: IN STD_LOGIC;
		f		  : OUT STD_LOGIC);
END COMPONENT;
BEGIN
	mux0: Mux4to1_BeachWilliam PORT MAP(I0=>J0, I1=>J1, I2=>J2, I3=>J3, s0=>t0, s1=>t1, F=>g1);
	mux1: Mux4to1_BeachWilliam PORT MAP(I0=>J4, I1=>J5, I2=>J6, I3=>J7, s0=>t0, s1=>t1, F=>g2);
	mux2: Mux2to1_BeachWilliam PORT MAP(x1=>g1, x2=>g2, s=>t2, f=>G);
END LogicFunc2;