library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe_reg5 is 
    port(
        rf_a3_5: in std_logic_vector(2 downto 0);
		  CLK,RST: in std_logic;
		  pipe_reg5_enable: in std_logic;
        mux8_out_1, instr_MA_2:  in std_logic_vector(15 downto 0);     --to RF_D3
		  rf_a3_6: out std_logic_vector(2 downto 0);         --to RF_A3
		  rf_d3_out, instr_WB_1: out std_logic_vector(15 downto 0));     --alu2_outp_1: alu2_out passed on to the second stage
end entity;

architecture pipe5 of pipe_reg5 is

	signal instr, rf_d3 : std_logic_vector(15 downto 0);
	signal rf_a3 : std_logic_vector(2 downto 0);
	
begin

	 write_proc: process(pipe_reg5_enable)
	 begin 
	     if(pipe_reg5_enable = '1') then 
		     instr <= instr_MA_2;
	        rf_a3 <= rf_a3_5;
			  rf_d3 <= mux8_out_1;
		  else null;
	     end if;
	 end process write_proc;

    read_proc: process(CLK, RST)
    begin
--		  if(RST = '1') then 
--		      rf_a35 <= "000";
--				rf_d3out <= "0000000000000000";
        if (CLK'event and CLK = '0') then  --writing at negative clock edge
            rf_a3_6 <= rf_a3;
			   rf_d3_out <= rf_d3;
				instr_WB_1 <= instr;
        end if;
    end process read_proc;

end pipe5;