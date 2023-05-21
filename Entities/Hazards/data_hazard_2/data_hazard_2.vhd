library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_hazard_2 is 
  port(instr_EX, instr_MA: in std_logic_vector(15 downto 0);
       mux4_control_1, mux5_control_1: out std_logic);
end entity;

architecture hazard_2 of data_hazard_2 is

signal opcode_EX, opcode_MA: std_logic_vector(3 downto 0);

begin

opcode_EX <= instr_EX(15 downto 12);
opcode_MA <= instr_MA(15 downto 12);

hazard_proc: process(instr_EX, instr_MA, opcode_EX, opcode_MA)
  begin 
  
   if((opcode_EX = "0001" and opcode_MA = "0001") or (opcode_EX = "0001" and opcode_MA = "0010") or (opcode_EX = "0001" and opcode_MA = "0000") or (opcode_EX = "0010" and opcode_MA = "0001") or (opcode_EX = "0010" and opcode_MA = "0001") or (opcode_EX = "0010" and opcode_MA = "0001")) then	
		 if(instr_EX(5 downto 3) = instr_MA(11 downto 9) and instr_EX(5 downto 3) /= instr_MA(8 downto 6)) then
			 mux4_control_1 <= '1';
			 mux5_control_1 <= '0';
		 elsif(instr_EX(5 downto 3) = instr_MA(8 downto 6) and instr_EX(5 downto 3) /= instr_MA(11 downto 9)) then
			 mux4_control_1 <= '0';
			 mux5_control_1 <= '1';
		 elsif(instr_EX(5 downto 3) = instr_MA(8 downto 6) and instr_EX(5 downto 3) = instr_MA(8 downto 6)) then
			 mux4_control_1 <= '1';
			 mux5_control_1 <= '1';
		 else 
			 mux4_control_1 <= '0';
			 mux5_control_1 <= '0';
		 end if;
	 
   elsif((opcode_EX = "0100" and opcode_MA = "0001") or (opcode_EX = "0100" and opcode_MA = "0010") or (opcode_EX = "0100" and opcode_MA = "0000")) then      
		 if(instr_EX(11 downto 9) = instr_MA(11 downto 9) and instr_EX(11 downto 9) /= instr_MA(8 downto 6)) then
			 mux4_control_1 <= '1';
			 mux5_control_1 <= '0'; 
		 elsif(instr_EX(11 downto 9) = instr_MA(8 downto 6) and instr_EX(11 downto 9) /= instr_MA(11 downto 9)) then
			 mux4_control_1 <= '0';
			 mux5_control_1 <= '1';
		 elsif(instr_EX(11 downto 9) = instr_MA(8 downto 6) and instr_EX(11 downto 9) = instr_MA(8 downto 6)) then
			 mux4_control_1 <= '1';
			 mux5_control_1 <= '1';
		 else 
			 mux4_control_1 <= '0';
			 mux5_control_1 <= '0';
		 end if;	
	 
	else
	    mux4_control_1 <= '0';
		 mux5_control_1 <= '0';
		 
	end if;
  end process;
end hazard_2;


--NOTE: This block considers the following 2-dependencies:
--all possible combinations of ADA and NDU(including their variations)
--combination of ADA/NDU (including their variations) with ADI
--combination of LW and ADA, NDU and ADI(including their variations)