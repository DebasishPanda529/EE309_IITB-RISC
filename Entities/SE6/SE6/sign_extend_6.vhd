library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend_6 is 
port(SE_in: in std_logic_vector(5 downto 0);
     SE_out: out std_logic_vector(15 downto 0));
end entity sign_extend_6;

architecture Extend_6 of sign_extend_6 is
begin
SE_out(5 downto 0) <= SE_in(5 downto 0);
SE_out(15 downto 6) <= "0000000000";
end Extend_6;