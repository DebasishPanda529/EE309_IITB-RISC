library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe_reg1 is 
    port(
        alu2_outp, mem1_outp: in std_logic_vector(15 downto 0);
		  CLK,RST: in std_logic;
		  pipe_reg1_enable: in std_logic;
        instr_ID_1, alu2_outp_1: out std_logic_vector(15 downto 0));     --alu2_outp_1: alu2_out passed on to the second stage
end entity;

architecture pipe1 of pipe_reg1 is

	signal alu2_data, mem1_data : std_logic_vector(15 downto 0);
	
begin

	 write_proc: process(pipe_reg1_enable, alu2_outp, mem1_outp)
	 begin 
	     if(pipe_reg1_enable = '1') then 
	        mem1_data <= mem1_outp;
			  alu2_data <= alu2_outp;
		  else null;
	     end if;
	 end process write_proc;

    read_proc: process(CLK, RST, mem1_outp, alu2_outp)
    begin
		  if(RST = '1') then 
		      instr_ID_1 <= "0000000000000000";
				alu2_outp_1 <= "0000000000000000";
        elsif (CLK'event and CLK = '0') then  --writing at negative clock edge
            instr_ID_1 <= mem1_data;
				alu2_outp_1 <= alu2_data;
        end if;
    end process read_proc;

end pipe1;