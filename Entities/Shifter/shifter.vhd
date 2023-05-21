library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter is 
    port(
	 data_in : in std_logic_vector(15 downto 0);
	 --CLK,RST : in std_logic;
	 shift_enable : in std_logic;
	 data_out : out std_logic_vector(15 downto 0));
end entity;

architecture shift of shifter is 

begin 
   shift_proc: process(shift_enable, data_in)
	begin
      if(shift_enable = '1') then
	      data_out(15 downto 0) <= data_in(14 downto 0) & '0';
		else data_out <= data_in;
	   end if;
	end process shift_proc;
	
end shift;
	