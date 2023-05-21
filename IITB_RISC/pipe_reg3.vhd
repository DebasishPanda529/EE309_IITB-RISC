library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe_reg3 is 
    port(rf_a3_1: in std_logic_vector(2 downto 0);
	     instr_RR_2: in std_logic_vector(15 downto 0);
        alu2_outp_4, mux4_out_1, s1_1_in, s1_2_in, rf_d2_1: in std_logic_vector(15 downto 0);             ---alu1_in <=> mux4_out
	     CLK, RST: in std_logic;
		  pipe_reg3_enable: in std_logic;
		  instr_EX_1: out std_logic_vector(15 downto 0);
        alu1_in_1, s1_1_out, s1_2_out, rf_d2_2, alu2_outp_5: out std_logic_vector(15 downto 0);
		  CV_1, EN_1, mux10_1: out std_logic_vector(1 downto 0);
		  C_in_1, Z_in_1, mux6_1: out std_logic;
		  rf_a3_2: out std_logic_vector(2 downto 0)); 
end entity;

architecture pipe3 of pipe_reg3 is

   signal instr: std_logic_vector(15 downto 0);
	signal alu1_in, s1_1, s1_2, rf_d2, alu2_out: std_logic_vector(15 downto 0);
	signal CV, EN, mux10: std_logic_vector(1 downto 0);
	signal rf_a3: std_logic_vector(2 downto 0);
	signal mux6: std_logic;
	signal opcode: std_logic_vector(3 downto 0);
	signal C_in, Z_in, cmp_check: std_logic; 
   signal control: std_logic_vector(2 downto 0);        --signals for pipeline
	
begin
  
  mux6 <= control(2);
  mux10 <= control(1 downto 0);
  C_in <= instr_RR_2(1);                
  Z_in <= instr_RR_2(0);                
  opcode <= instr_RR_2(15 downto 12);
  cmp_check <= instr_RR_2(2);

   write_proc: process(pipe_reg3_enable)
   begin 
	  if(pipe_reg3_enable = '1') then 
        instr <= instr_RR_2;
		  alu1_in <= mux4_out_1;
		  s1_1 <= s1_1_in;
		  s1_2 <= s1_2_in;
		  rf_d2 <= rf_d2_1;
		  alu2_out <= alu2_outp_4;
		  rf_a3 <= rf_a3_1;
        
	  else null;
	  end if;
	end process write_proc;

   read_proc: process(CLK, RST)
   begin		 
     if (CLK'event and CLK = '0') then 	--writing at negative clock edge
	  
	     instr_EX_1 <= instr;
		  alu1_in_1 <= alu1_in;
		  s1_1_out <= s1_1;
		  s1_2_out <= s1_2;
		  rf_d2_2 <= rf_d2;
		  CV_1 <= CV;
		  EN_1 <= EN;
		  C_in_1 <= C_in;
		  Z_in_1 <= Z_in;
		  alu2_outp_5 <= alu2_out; 
		  rf_a3_2 <= rf_a3;
		 
		  case opcode is
				when "0000" => 
				  control <= "110";
				when "0001" =>
				  if(C_in = '0' and Z_in = '0' and cmp_check = '0') then
				     control <= "110";
				  elsif(C_in = '1' and Z_in = '0' and cmp_check = '0') then
				     control <= "110";
				  elsif(C_in = '0' and Z_in = '1' and cmp_check = '0') then
				     control <= "110";
				  elsif(C_in = '1' and Z_in = '1' and cmp_check = '0') then
				     control <= "111";
				  elsif(C_in = '0' and Z_in = '0' and cmp_check = '1') then
				     control <= "111";
				  elsif(C_in = '1' and Z_in = '0' and cmp_check = '1') then
				     control <= "111";
				  elsif(C_in = '0' and Z_in = '1' and cmp_check = '1') then
				     control <= "111";
				  else
				     control <= "111";
				  end if;
				  
				when "0010" =>
				  if(C_in = '0' and Z_in = '0' and cmp_check = '0') then
				     control <= "110";
				  elsif(C_in = '1' and Z_in = '0' and cmp_check = '0') then
				     control <= "110";
				  elsif(C_in = '0' and Z_in = '1' and cmp_check = '0') then
				     control <= "110";
				  elsif(C_in = '0' and Z_in = '0' and cmp_check = '1') then
				     control <= "110";
				  elsif(C_in = '1' and Z_in = '0' and cmp_check = '1') then
				     control <= "110";
				  elsif(C_in = '0' and Z_in = '1' and cmp_check = '1') then
				     control <= "110";
				  else
				     control <= "000"; 
				  end if;				

				when "0011" =>
				  control <= "110";
				when "0100" =>
				  control <= "1--";
				when "0101" =>
				  control <= "101";
--				when "0110" =>
--				  control <= "";
--				when "0111" =>
--  				  control <= "";
				when "1000" =>
    			  control <= "1--";
				when "1001" =>
				  control <= "1--";
	         when "1100" =>
				  control <= "101";
	         when "1101" =>
				  control <= "101";
	         when "1111" =>
				 control <= "1--"; 
				when others =>
				  null;
	     end case;
     end if; 
   end process read_proc;

end pipe3;