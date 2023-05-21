-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(15 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component ALU2 is
      port (
		ALU2_A: in std_logic_vector(15 downto 0);
      ALU2_C: out std_logic_vector(15 downto 0)) ;
   end component;
begin

   add_instance: ALU2
			port map (
					-- order of inputs B A
					ALU2_A => input_vector(15 downto 0),
               -- order of output OUTPUT
					ALU2_C => output_vector(15 downto 0));
end DutWrap;