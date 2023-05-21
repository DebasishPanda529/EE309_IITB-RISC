library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is 
    port(
        RF_A1,RF_A2,RF_A3 : in std_logic_vector(2 downto 0);         ---register encoding input
        RF_D3 : in std_logic_vector(15 downto 0);                    ---content to be stored in a given register
        RF_WR : in std_logic;                                        
        RF_RD : in std_logic;
        CLK,RST : in std_logic;
        RF_D1,RF_D2 : out std_logic_vector(15 downto 0));             ---output from registers
        
end entity;

architecture regf of register_file is    
    signal R0,R1,R2,R3,R4,R5,R6,R7 : std_logic_vector(15 downto 0) := (others => '0');
--    signal R5 : std_logic_vector(15 downto 0) := "0000000000000001";
--    signal R6 : std_logic_vector(15 downto 0) := "0000000000000010";  
  
begin
    --writing to register when RF_WR is set
    write_process : process(CLK)
    begin
        if (CLK'event and CLK = '0') then  -- negative clock edge 
            if(RF_WR = '1') then
               case RF_A3 is
					   when "000" =>
						  R0 <= RF_D3;
					   when "001" =>
						  R1 <= RF_D3;
						when "010" =>
						  R2 <= RF_D3;
						when "011" =>
						  R3 <= RF_D3;
						when "100" =>
						  R4 <= RF_D3;
						when "101" =>
						  R5 <= RF_D3;
						when "110" =>
						  R6 <= RF_D3;
						when "111" =>
						  R7 <= RF_D3;
						when others =>
						  null;
                end case;            
            else null;
            end if;
         end if;
    end process write_process;

    --reading from the registers when RF_RD is set
    read_process : process(RF_A1,RF_A2,RF_RD,R0,R1,R2,R3,R4,R5,R6,R7)
    begin
        if(RF_RD = '1') then
			 case RF_A1 is
			  when "000" =>
				 RF_D1 <= R0;
			  when "001" =>
				 RF_D1 <= R1;
			  when "010" =>
				 RF_D1 <= R2;
			  when "011" =>
				 RF_D1 <= R3;
			  when "100" =>
				 RF_D1 <= R4;
			  when "101" =>
				 RF_D1 <= R5;
			  when "110" =>
				 RF_D1 <= R6;
			  when "111" =>
				 RF_D1 <= R7;
			  when others =>
				 null;
           end case;
    
            --Address 2
		    case RF_A2 is
			  when "000" =>
				 RF_D2 <= R0;
			  when "001" =>
				 RF_D2 <= R1;
			  when "010" =>
				 RF_D2 <= R2;
			  when "011" =>
				 RF_D2 <= R3;
			  when "100" =>
				 RF_D2 <= R4;
			  when "101" =>
				 RF_D2 <= R5;
			  when "110" =>
				 RF_D2 <= R6;
			  when "111" =>
				 RF_D2 <= R7;
			  when others =>
				 null;
          end case;
        else null;    
        end if;
    end process read_process;
    
end regf;
---------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend_6 is 
port(SE_in_6: in std_logic_vector(5 downto 0);
     SE_out_6: out std_logic_vector(15 downto 0));
end entity;

architecture Extend of sign_extend_6 is

begin
SE_out_6 (5 downto 0) <= SE_in_6;
SE_out_6 (15 downto 6) <= "0000000000";
end Extend;


---------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend_9 is 
port(SE_in_9: in std_logic_vector(8 downto 0);
     SE_out_9: out std_logic_vector(15 downto 0));
end entity;

architecture Extend of sign_extend_9 is
begin
SE_out_9(15 downto 9) <= "0000000";
SE_out_9(8 downto 0) <= SE_in_9;
end Extend;

---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CMP is
    port(
	 cmp_data_in : in std_logic_vector(15 downto 0);
	 cmp_enable : in std_logic;
	 cmp_data_out : out std_logic_vector(15 downto 0));
end entity;

architecture complement of CMP is

begin
   complement_proc: process(cmp_enable, cmp_data_in)
	begin
		if(cmp_enable = '1') then
		   for i in 0 to 15 loop
			  cmp_data_out(i) <= not(cmp_data_in(i));
			end loop;
		else cmp_data_out <= cmp_data_in;
		end if;
	end process complement_proc;
		  
end complement;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter is 
    port(
	 data_in : in std_logic_vector(15 downto 0);
	 shift_enable : in std_logic;
	 data_out : out std_logic_vector(15 downto 0));
end entity;

architecture shift of shifter is 

begin 
   shift_proc: process(shift_enable, data_in)
	begin
      if(shift_enable = '1') then
	      data_out(15 downto 0) <= data_in(14 downto 0) & '0';
		else data_out <= data_in;
	   end if;
	end process shift_proc;
	
end shift;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_read is 
   port(ID_in_2, alu2_in_1: in std_logic_vector(15 downto 0);                                ---instr, alu2_out input to RR stage
	     EX_fwd, MA_fwd, WB_fwd: in std_logic_vector(15 downto 0);                            ---input from forwarding blocks
		  EX_hzd_4, MA_hzd_4, WB_hzd_4: in std_logic;                                          ---control input for mux4
		  EX_hzd_5, MA_hzd_5, WB_hzd_5: in std_logic;                                          ---control input for mux5 
	     reg_rd, reg_wr, mux1, mux2, mux4, shift_enable_1, shift_enable_2, cmp_en: in std_logic;
	     mux3, mux5, mux7: in std_logic_vector(1 downto 0);
	     CLK, RST: in std_logic;
		  mem1_data_11_9, mem1_data_8_6, mem1_data_5_3: in std_logic_vector (2 downto 0); 
		  extend6_in: in std_logic_vector(5 downto 0);
		  extend9_in: in std_logic_vector(8 downto 0);
		  rf_a3 : in std_logic_vector(2 downto 0);
		  rf_d3: in std_logic_vector(15 downto 0);
		  mux4_out, shifter_out_1, shifter_out_2: out std_logic_vector(15 downto 0);
		  rf_a3_pipe: out std_logic_vector(2 downto 0);
		  ID_in_3, alu2_out_2, rf_d2_RR: out std_logic_vector(15 downto 0));                    ---instr, alu2_out output from RR stage                            
end reg_read;

architecture behav of reg_read is 

component register_file is 
    port(RF_A1,RF_A2,RF_A3 : in std_logic_vector(2 downto 0);     
         RF_D3 : in std_logic_vector(15 downto 0);                    
         RF_WR : in std_logic;                                        
         RF_RD : in std_logic;
         CLK,RST : in std_logic;
         RF_D1,RF_D2 : out std_logic_vector(15 downto 0));
end component;

component shifter is 
    port(data_in : in std_logic_vector(15 downto 0);
	      shift_enable : in std_logic;
	      data_out : out std_logic_vector(15 downto 0));
end component;

component CMP is 
    port(cmp_data_in : in std_logic_vector(15 downto 0);
	      cmp_enable : in std_logic;
	      cmp_data_out : out std_logic_vector(15 downto 0));
end component;

component sign_extend_6 is 
    port(SE_in_6: in std_logic_vector(5 downto 0);
         SE_out_6: out std_logic_vector(15 downto 0));
end component;

component sign_extend_9 is
    port(SE_in_9: in std_logic_vector(8 downto 0);
         SE_out_9: out std_logic_vector(15 downto 0));
end component;

signal rf_a1, rf_a2: std_logic_vector(2 downto 0);
signal rf_d1, rf_d2, mux5_out, mux7_out, cmp_out, extend6, extend9: std_logic_vector(15 downto 0);  
signal mux4_control: std_logic_vector(3 downto 0); 
signal mux5_control: std_logic_vector(4 downto 0);

begin

rf_d2_RR <= rf_d2;
alu2_out_2 <= alu2_in_1;
ID_in_3 <= ID_in_2;
mux4_control(0) <= mux4;
mux4_control(1) <= EX_hzd_4;
mux4_control(2) <= MA_hzd_4;
mux4_control(3) <= WB_hzd_4;
mux5_control(1 downto 0) <= mux5;
mux5_control(2) <= EX_hzd_5;
mux5_control(3) <= MA_hzd_5;
mux5_control(4) <= WB_hzd_5;

reg_file: register_file port map(RF_A1 => rf_a1, RF_A2 => rf_a2, RF_A3 => rf_a3, RF_D3 => rf_d3, RF_WR => reg_wr, RF_RD => reg_rd, CLK => CLK, RST => RST, RF_D1 => rf_d1, RF_D2 => rf_d2);
S1_1: shifter port map(data_in => cmp_out, shift_enable => shift_enable_1, data_out => shifter_out_1);
S1_2: shifter port map(data_in => mux7_out, shift_enable => shift_enable_2, data_out => shifter_out_2);
complement: CMP port map(cmp_data_in => mux5_out, cmp_enable => cmp_en, cmp_data_out => cmp_out);
SE6: sign_extend_6 port map(SE_in_6 => extend6_in, SE_out_6 => extend6);
SE9: sign_extend_9 port map(SE_in_9 => extend9_in, SE_out_9 => extend9);

reg_rd_process: process(CLK, RST, mux1, mux2, mux3, mux4, mux5, mux7, mem1_data_11_9, mem1_data_8_6, mem1_data_5_3, WB_fwd, MA_fwd, EX_fwd, rf_d1, rf_d2, extend6, extend9)
begin  

  if(mux1 = '1') then
    rf_a1 <= mem1_data_11_9;
  else rf_a1 <= mem1_data_8_6;
  end if;
  
  if(mux2 = '1') then
    rf_a2 <= mem1_data_11_9;
  else rf_a2 <= mem1_data_8_6;
  end if;
  
  if(mux3 = "11") then                       --check this very carefully, this rf_a3 is not what you need
    rf_a3_pipe <= mem1_data_11_9;
  elsif(mux3 = "10") then
    rf_a3_pipe <= mem1_data_8_6;
  elsif(mux3 = "10") then 
    rf_a3_pipe <= mem1_data_5_3;
  else null;
  end if;
  
--  if(mux4 = '1') then
--    mux4_out <= rf_d1;
--  else mux4_out <= rf_d2;
--  end if;                                  --mux4's control w/o data forwarding

  if(mux4_control = "1---") then 
     mux4_out <= WB_fwd;
  elsif(mux4_control = "-1--") then
     mux4_out <= MA_fwd;
  elsif(mux4_control = "--1-") then
     mux4_out <= EX_fwd;
  elsif(mux4_control = "---1") then
     mux4_out <= rf_d1;
  else mux4_out <= rf_d2;
  end if;                                    --mux4's control with data forwarding
  
--  if(mux5 = "11") then
--     mux5_out <= rf_d2;
--  elsif(mux5 = "10") then
--     mux5_out <= extend6;
--  elsif(mux5 = "01") then
--     mux5_out <= extend9;
--  else mux5_out <= "0000000000000000";
--  end if;                                  --mux5's control w/o data forwarding

  if(mux5_control = "1----") then
     mux5_out <= WB_fwd;
  elsif(mux5_control = "-1---") then
     mux5_out <= MA_fwd;
  elsif(mux5_control = "--1--") then
     mux5_out <= EX_fwd;
  elsif(mux5_control = "---11") then 
     mux5_out <= rf_d2;
  elsif(mux5_control = "---10") then
     mux5_out <= extend6;
  elsif(mux5_control = "---01") then
     mux5_out <= extend9;
  else mux5_out <= "0000000000000000";
  end if;                                     --mux5's control with data forwarding
   
  if(mux7 = "11") then
     mux7_out <= extend6;
  elsif(mux7 = "10") then
     mux7_out <= extend9;
  elsif(mux7 = "01") then
     mux7_out <= "0000000000000000";
  else null;
  end if;
  
end process;
end architecture behav;