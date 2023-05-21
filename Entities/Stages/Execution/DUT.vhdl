-- A DUT entity is used to wrap your design so that we can combine it with testbench.
-- This example shows how you can do this for the OR Gate

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port(input_vector: in std_logic_vector(95 downto 0);
       	output_vector: out std_logic_vector(33 downto 0));
end entity;

architecture DutWrap of DUT is
   component exec is
      port (alu1_in, cmp_in, alu2_out, extend6, extend9: in std_logic_vector(15 downto 0);
	         CLK, RST: in std_logic;
		      Z0, Z_in, C_in, cmp_enable, shift, mux4: in std_logic;
		      CV, EN, mux6, mux7: in std_logic_vector(1 downto 0);
		      C, Z: out std_logic;
		      alu1_out, alu3_out: out std_logic_vector(15 downto 0)) ;
   end component;
begin

   add_instance: exec
			port map (
					-- order of inputs B A
					alu1_in => input_vector(95 downto 80),
					cmp_in => input_vector(79 downto 64),
					alu2_out => input_vector(63 downto 48),
					extend6 => input_vector(47 downto 32),
					extend9 => input_vector(31 downto 16),
					CLK => input_vector(15),
               RST => input_vector(14),
					Z0 => input_vector(13),
					Z_in => input_vector(12),
					C_in => input_vector(11),
					cmp_enable => input_vector(10),
					shift => input_vector(9),
					mux4 => input_vector(8),
					CV => input_vector(7 downto 6),
					EN => input_vector(5 downto 4),
					mux6 => input_vector(3 downto 2),
					mux7 => input_vector(1 downto 0),
               -- order of output OUTPUT
					C => output_vector(33),
					Z => output_vector(32),
					alu1_out => output_vector(31 downto 16),
					alu3_out => output_vector(15 downto 0));
end DutWrap;