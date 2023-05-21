library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe_reg4 is 
    port(instr_EX_2: in std_logic_vector(15 downto 0);
	      alu3_out_1, mux10_out_1, alu1_out_1, rf_d2_3: in std_logic_vector(15 downto 0);
			rf_a3_3: in std_logic_vector(2 downto 0);
		   CLK,RST: in std_logic;
			C0_in, Z0_in: in std_logic;
		   pipe_reg4_enable: in std_logic;
			alu3_out_pipe, mem2_address_in_1, mem2_data_in_1: out std_logic_vector(15 downto 0);
			mem2_read, mem2_write, mux8_1: out std_logic;
			C0_out, Z0_out: out std_logic;
		   instr_MA_1, mux10_out_2: out std_logic_vector(15 downto 0);
			rf_a3_4: out std_logic_vector(2 downto 0));     
end entity;

architecture pipe4 of pipe_reg4 is

   signal instr, alu3_out, mem2_address, mem2_data, mux10_out: std_logic_vector(15 downto 0);
	signal rf_a3: std_logic_vector(2 downto 0);
   signal opcode: std_logic_vector(3 downto 0);
	signal control: std_logic_vector(2 downto 0);
	
begin

   opcode <= instr_EX_2(15 downto 12);
	mem2_read <= control(2);
	mem2_write <= control(1);
	mux8_1 <= control(0);
	C0_out <= C0_in;
	Z0_out <= Z0_in;
	
	 write_proc: process(pipe_reg4_enable)
	 begin 
	     if(pipe_reg4_enable = '1') then
           instr <= instr_EX_2;
		     mux10_out <= mux10_out_1; 			  
			  mem2_address <= alu1_out_1;
			  mem2_data <= rf_d2_3;
			  rf_a3 <= rf_a3_3;
			  alu3_out <= alu3_out_1;
			  
		  else null;
	     end if;
	 end process write_proc;

    read_proc: process(CLK, RST)
    begin
--		  if(RST = '1') then 
--		      out1 <= "0000000000000000";
--				out2 <= "0000000000000000";
--				mwr_1 <= '0';
--				mdr_1 <= '0';	
          if (CLK'event and CLK = '0') then  --writing at negative clock edge
			 
			  alu3_out_pipe <= alu3_out;
			  mem2_address_in_1 <= mem2_address;
			  mem2_data_in_1 <= mem2_data;
			  instr_MA_1 <= instr;
			  rf_a3_4 <= rf_a3;
			  mux10_out_2 <= mux10_out;
			  
          case opcode is
				when "0000" =>
				  control <= "000";
				when "0001" =>
				  control <= "000";
				when "0010" =>
				  control <= "000";
				when "0011" =>
				  control <= "000";
				when "0100" =>
				  control <= "111";
				when "0101" =>
				  control <= "110";
--					when "0110" =>
--					  control <= ""; 
--					when "0111" =>
--					  control <= "";
				when "1000" =>
				  control <= "00-";
				when "1001" =>
				  control <= "00-";
				when "1100" =>
				  control <= "000";
				when "1101" =>
				  control <= "000";
				when "1111" =>
				  control <= "00-";
				when others => null;
			end case;
			end if;
    end process;
end pipe4;