library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CMP is
    port(
	 cmp_data_in : in std_logic_vector(15 downto 0);
	 cmp_enable : in std_logic;
	 cmp_data_out : out std_logic_vector(15 downto 0));
end entity;

architecture complement of CMP is

begin
   complement_proc: process(cmp_enable, cmp_data_in)
	begin
		if(cmp_enable = '1') then
		   for i in 0 to 15 loop
			  cmp_data_out(i) <= not(cmp_data_in(i));
			end loop;
		else cmp_data_out <= cmp_data_in;
		end if;
	end process complement_proc;
		  
end complement;
