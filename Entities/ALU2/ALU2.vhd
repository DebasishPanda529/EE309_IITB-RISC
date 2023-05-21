library ieee;
use ieee.std_logic_1164.all;

entity ALU2 is
 port (
   ALU2_A: in std_logic_vector(15 downto 0);
   --ALU2_B: in std_logic_vector(15 downto 0);
   ALU2_C: out std_logic_vector(15 downto 0));
end ALU2;

architecture alu2_arch of ALU2 is

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

alu2_proc: process(ALU2_A) 
begin 
ALU2_C <= add(ALU2_A,"0000000000000010");
end process;
end alu2_arch;