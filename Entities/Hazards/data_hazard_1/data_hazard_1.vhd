library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity data_hazard_1 is 
  port(instr_EX, instr_RR: in std_logic_vector(15 downto 0);
       mux4_control, mux5_control: out std_logic);
end entity;

architecture hazard_1 of data_hazard_1 is

signal opcode_EX, opcode_RR: std_logic_vector(3 downto 0);

begin

opcode_EX <= instr_EX(15 downto 12);
opcode_RR <= instr_RR(15 downto 12);

hazard_proc: process(instr_EX, instr_RR, opcode_EX, opcode_RR)
  begin 
  
   if((opcode_EX = "0001" and opcode_RR = "0001") or (opcode_EX = "0001" and opcode_RR = "0010") or (opcode_EX = "0001" and opcode_RR = "0000") or (opcode_EX = "0010" and opcode_RR = "0001") or (opcode_EX = "0010" and opcode_RR = "0001") or (opcode_EX = "0010" and opcode_RR = "0001")) then	
		 if(instr_EX(5 downto 3) = instr_RR(11 downto 9) and instr_EX(5 downto 3) /= instr_RR(8 downto 6)) then
			 mux4_control <= '1';
			 mux5_control <= '0';
		 elsif(instr_EX(5 downto 3) = instr_RR(8 downto 6) and instr_EX(5 downto 3) /= instr_RR(11 downto 9)) then
			 mux4_control <= '0';
			 mux5_control <= '1';
		 elsif(instr_EX(5 downto 3) = instr_RR(8 downto 6) and instr_EX(5 downto 3) = instr_RR(8 downto 6)) then
			 mux4_control <= '1';
			 mux5_control <= '1';
		 else 
			 mux4_control <= '0';
			 mux5_control <= '0';
		 end if;
	 
   elsif((opcode_EX = "0100" and opcode_RR = "0001") or (opcode_EX = "0100" and opcode_RR = "0010") or (opcode_EX = "0100" and opcode_RR = "0000")) then      
		 if(instr_EX(11 downto 9) = instr_RR(11 downto 9) and instr_EX(11 downto 9) /= instr_RR(8 downto 6)) then
			 mux4_control <= '1';
			 mux5_control <= '0'; 
		 elsif(instr_EX(11 downto 9) = instr_RR(8 downto 6) and instr_EX(11 downto 9) /= instr_RR(11 downto 9)) then
			 mux4_control <= '0';
			 mux5_control <= '1';
		 elsif(instr_EX(11 downto 9) = instr_RR(8 downto 6) and instr_EX(11 downto 9) = instr_RR(8 downto 6)) then
			 mux4_control <= '1';
			 mux5_control <= '1';
		 else 
			 mux4_control <= '0';
			 mux5_control <= '0';
		 end if;	
	 
	else
	    mux4_control <= '0';
		 mux5_control <= '0';
		 
	end if;
  end process;
end hazard_1;


--NOTE: This block considers the following immediate dependencies:
--all possible combinations of ADA and NDU(including their variations)
--combination of ADA/NDU (including their variations) with ADI
--combination of LW and ADA, NDU and ADI(including their variations)