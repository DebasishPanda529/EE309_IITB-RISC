library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe_reg2 is 
    port(
        ID_outp1, ID_outp2, ID_outp3: in std_logic_vector(2 downto 0);
		  ID_outp4: in std_logic_vector(5 downto 0);
		  ID_outp5: in std_logic_vector(8 downto 0);
		  instr_ID_2: in std_logic_vector(15 downto 0);            ---for storing the instruction
		  alu2_outp_2: in std_logic_vector(15 downto 0);
		  CLK,RST: in std_logic;
		  pipe_reg2_enable: in std_logic;
        reg_read, reg_write, mux1_1, mux2_1, mux4_1, shift_enable_11, shift_enable_21, cmp_en_1: out std_logic;
		  mux3_1, mux5_1, mux7_1: out std_logic_vector(1 downto 0);
		  mem1_data_11_9_1, mem1_data_8_6_1, mem1_data_5_3_1: out std_logic_vector(2 downto 0);
		  extend6_in_1: out std_logic_vector(5 downto 0);
		  extend9_in_1: out std_logic_vector(8 downto 0);		  
		  --rf_a3_1: out std_logic_vector(2 downto 0);
		  --rf_d3_1: out std_logic_vector(15 downto 0);
		  alu2_outp_3: out std_logic_vector(15 downto 0);
		  instr_RR_1: out std_logic_vector(15 downto 0));   
end entity;

architecture pipe2 of pipe_reg2 is

	signal ID_out1, ID_out2, ID_out3: std_logic_vector(2 downto 0);
	signal ID_out4: std_logic_vector(5 downto 0);
	signal ID_out5: std_logic_vector(8 downto 0);
	signal instr, alu2_out: std_logic_vector(15 downto 0);
	signal opcode: std_logic_vector(3 downto 0);
	signal control: std_logic_vector(13 downto 0);
	
begin

reg_read <= control(13);
reg_write <= control(12);
mux1_1 <= control(11);
mux2_1 <= control(10);
mux3_1 <= control(9 downto 8);
mux4_1 <= control(7);
mux5_1 <= control(6 downto 5);
mux7_1 <= control(4 downto 3);
shift_enable_11 <= control(2);
shift_enable_21 <= control(1);
cmp_en_1 <= control(0);

opcode <= instr_ID_2(15 downto 12);

	 write_proc: process(pipe_reg2_enable)
	 begin 
	     if(pipe_reg2_enable = '1') then 
	        ID_out1 <= ID_outp1;
			  ID_out2 <= ID_outp2;
			  ID_out3 <= ID_outp3;
			  ID_out4 <= ID_outp4;
			  ID_out5 <= ID_outp5;
			  instr <= instr_ID_2;
			  alu2_out <= alu2_outp_2;
		  else null;
	     end if;
	 end process write_proc;

    read_proc: process(CLK, RST)
    begin		        
        if (CLK'event and CLK = '0') then  --writing at negative clock edge
            mem1_data_11_9_1 <= ID_out1;
				mem1_data_8_6_1 <= ID_out2;
				mem1_data_5_3_1 <= ID_out3;
				extend6_in_1 <= ID_out4;
				extend9_in_1 <= ID_out5;
				instr_RR_1 <= instr;
				alu2_outp_3 <= alu2_out;
			  
			  case opcode is
			      when "0000" => 
					  control <= "111-1011001000";
					when "0001" =>
					  control <= "11100111101000";
					when "0010" =>
					  control <= "11100111101000";
					when "0011" =>
					  control <= "11--1100001000";
					when "0100" =>
					  control <= "110-1111001000";
					when "0101" =>
					  control <= "11010011101000";
--					when "0110" =>
--					  control <= "";
--					when "0111" =>
--					  control <= "";
					when "1000" =>
					  control <= "1010--11111000";
					when "1001" =>
					  control <= "1010--11111000";
					when "1010" =>
					  control <= "1010--11111000";
					when "1100" =>
					  control <= "01--11---10000";
					when "1101" =>
					  control <= "110-11---01000";
					when "1111" =>
					  control <= "-01---10101000"; 
					when others =>
					  null;
			  end case;
			  
        end if;
    end process read_proc;

end pipe2;