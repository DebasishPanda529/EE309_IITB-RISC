library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_hazard_3 is 
  port(instr_EX, instr_WB: in std_logic_vector(15 downto 0);
       mux4_control_2, mux5_control_2: out std_logic);
end entity;

architecture hazard_3 of data_hazard_3 is

signal opcode_EX, opcode_WB: std_logic_vector(3 downto 0);

begin

opcode_EX <= instr_EX(15 downto 12);
opcode_WB <= instr_WB(15 downto 12);

hazard_proc: process(instr_EX, instr_WB, opcode_EX, opcode_WB)
  begin 
  
   if((opcode_EX = "0001" and opcode_WB = "0001") or (opcode_EX = "0001" and opcode_WB = "0010") or (opcode_EX = "0001" and opcode_WB = "0000") or (opcode_EX = "0010" and opcode_WB = "0001") or (opcode_EX = "0010" and opcode_WB = "0001") or (opcode_EX = "0010" and opcode_WB = "0001")) then	
		 if(instr_EX(5 downto 3) = instr_WB(11 downto 9) and instr_EX(5 downto 3) /= instr_WB(8 downto 6)) then
			 mux4_control_2 <= '1';
			 mux5_control_2 <= '0';
		 elsif(instr_EX(5 downto 3) = instr_WB(8 downto 6) and instr_EX(5 downto 3) /= instr_WB(11 downto 9)) then
			 mux4_control_2 <= '0';
			 mux5_control_2 <= '1';
		 elsif(instr_EX(5 downto 3) = instr_WB(8 downto 6) and instr_EX(5 downto 3) = instr_WB(8 downto 6)) then
			 mux4_control_2 <= '1';
			 mux5_control_2 <= '1';
		 else 
			 mux4_control_2 <= '0';
			 mux5_control_2 <= '0';
		 end if;
	 
   elsif((opcode_EX = "0100" and opcode_WB = "0001") or (opcode_EX = "0100" and opcode_WB = "0010") or (opcode_EX = "0100" and opcode_WB = "0000")) then      
		 if(instr_EX(11 downto 9) = instr_WB(11 downto 9) and instr_EX(11 downto 9) /= instr_WB(8 downto 6)) then
			 mux4_control_2 <= '1';
			 mux5_control_2 <= '0'; 
		 elsif(instr_EX(11 downto 9) = instr_WB(8 downto 6) and instr_EX(11 downto 9) /= instr_WB(11 downto 9)) then
			 mux4_control_2 <= '0';
			 mux5_control_2 <= '1';
		 elsif(instr_EX(11 downto 9) = instr_WB(8 downto 6) and instr_EX(11 downto 9) = instr_WB(8 downto 6)) then
			 mux4_control_2 <= '1';
			 mux5_control_2 <= '1';
		 else 
			 mux4_control_2 <= '0';
			 mux5_control_2 <= '0';
		 end if;	
	 
	else
	    mux4_control_2 <= '0';
		 mux5_control_2 <= '0';
		 
	end if;
  end process;
end hazard_3;


--NOTE: This block considers the following 3-dependencies:
--all possible combinations of ADA and NDU(including their variations)
--combination of ADA/NDU (including their variations) with ADI
--combination of LW and ADA, NDU and ADI(including their variations)