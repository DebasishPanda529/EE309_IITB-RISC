library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend_1 is 
port(SE_in_1: in std_logic;
     SE_out_1: out std_logic_vector(15 downto 0));
end entity sign_extend_1;

architecture Extend_1 of sign_extend_1 is
begin
SE_out_1(0) <= SE_in_1;
SE_out_1(15 downto 1) <= "000000000000000";
end Extend_1;