library ieee;
use ieee.std_logic_1164.all;

entity ALU3 is
 port (
   ALU3_A: in std_logic_vector(15 downto 0);
   ALU3_B: in std_logic_vector(15 downto 0);
   ALU3_C: out std_logic_vector(15 downto 0));
end ALU3;

architecture alu3_arch of ALU3 is

 function add(A: in std_logic_vector(15 downto 0);
  B: in std_logic_vector(15 downto 0))
    return std_logic_vector is

    variable sum : std_logic_vector(15 downto 0) := (others => '0');
	 variable carry : std_logic_vector(15 downto 0) := (others => '0');
	 
   begin
     		for i in 0 to 15 loop 
			if i=0 then
				sum(i) :=  A(i) xor B(i);
				carry(i) := A(i) and B(i) ;
			else
			   sum(i) :=  A(i) xor B(i) xor carry(i-1);
				carry(i) := (A(i) and B(i)) or (carry(i-1) and (A(i) xor B(i))) ;
			end if;
		end loop;
		
	   return sum; 
 end add;
 
 
begin  

alu3_proc: process(ALU3_A,ALU3_B) 
begin 
ALU3_C <= add(ALU3_A,ALU3_B);
end process;
end alu3_arch;