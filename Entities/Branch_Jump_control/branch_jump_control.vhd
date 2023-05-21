library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity branch_jump_control is
    port(instr: in std_logic_vector(15 downto 0);
         C0_pipe_reg4, Z0_pipe_reg4: in std_logic;
         mux9: out std_logic);
end entity branch_jump_control;

architecture mux9_control of branch_jump_control is 

begin  
   random_proc: process(instr, Z0_pipe_reg4, C0_pipe_reg4)
      begin
          if(Z0_pipe_reg4 = '1') then                       --Z0 bit
            case instr(15 downto 12) is 
					 when "1000" =>                    --BEQ/BLE, when operands are equal
                  mux9 <= '1';  
                when "1001" =>
                  mux9 <= '1';					 
					 when "1100" =>
					   mux9 <= '1';
					 when "1101" =>
					   mux9 <= '1';
	             when "1111" =>
					   mux9 <= '1';
					 when others =>
                  mux9 <= '0';
            end case;
				
			 elsif(C0_pipe_reg4 = '1') then                   --C0 bit
			   case instr(15 downto 12) is                    --BLE, if first test fails/BLT
			       when "1001" =>
					   mux9 <= '1';
					 when "1100" =>
					   mux9 <= '1';
					 when "1101" =>
					   mux9 <= '1';
	             when "1111" =>
					   mux9 <= '1';
					 when others =>
					   mux9 <= '0'; 
				end case;
				
          else
			   case instr(15 downto 12) is
				    when "1100" =>
					   mux9 <= '1';
					 when "1101" =>
					   mux9 <= '1';
	             when "1111" =>
					   mux9 <= '1';
					 when others =>
			         mux9 <= '0';
				end case;
          end if;
       end process;
end mux9_control;