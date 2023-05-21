-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic;
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component sign_extend_1 is
     port(SE_in_1: in std_logic;
          SE_out_1: out std_logic_vector(15 downto 0));
   end component;
begin

   add_instance: sign_extend_1
			port map (
					-- order of inputs B A
					SE_in_1 => input_vector,
               -- order of output OUTPUT
					SE_out_1 => output_vector(15 downto 0));
end DutWrap;