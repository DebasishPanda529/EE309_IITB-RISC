library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IR is
port(IR_in: in std_logic_vector(15 downto 0);
     IR_out1, IR_out2, IR_out3: out std_logic_vector(2 downto 0);
	  IR_out4: out std_logic_vector(5 downto 0);
	  IR_out5: out std_logic_vector(8 downto 0));
end entity IR;

architecture Instr_Reg of IR is 
begin
IR_out1 <= IR_in(11 downto 9);
IR_out2 <= IR_in(8 downto 6);
IR_out3 <= IR_in(5 downto 3);
IR_out4 <= IR_in(5 downto 0);
IR_out5 <= IR_in(8 downto 0);
end Instr_Reg;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Instr_Decode is 
   port(ID_in, alu2_in: in std_logic_vector(15 downto 0);                ---instruction input, alu2_out's wire
	     ID_out1, ID_out2, ID_out3: out std_logic_vector(2 downto 0);
		  ID_out4: out std_logic_vector(5 downto 0);
		  ID_out5: out std_logic_vector(8 downto 0);
		  ID_in_1, alu2_out_1: out std_logic_vector(15 downto 0));          ---instruction input to pipe_reg2, alu2_out's wire
end Instr_Decode;

architecture decode of Instr_Decode is 

   component IR is
	  port(IR_in: in std_logic_vector(15 downto 0);
          IR_out1, IR_out2, IR_out3: out std_logic_vector(2 downto 0);
	       IR_out4: out std_logic_vector(5 downto 0);
	       IR_out5: out std_logic_vector(8 downto 0));
	end component;

begin

alu2_out_1 <= alu2_in;
ID_in_1 <= ID_in;
IR_instance: IR port map(IR_in => ID_in, IR_out1 => ID_out1, IR_out2 => ID_out2, IR_out3 => ID_out3, IR_out4 => ID_out4, IR_out5 => ID_out5);

end decode;