library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_unit2 is
    port(CLK : in std_logic;
        MWR_2 : in std_logic;     ---write enable bit
	     MDR_2 : in std_logic;     ---read enable bit
        RST : in std_logic;     
        mem2_address : in std_logic_vector(15 downto 0);
        mem2_data_in : in std_logic_vector(15 downto 0);
        mem2_data_out : out std_logic_vector(15 downto 0));
    
end entity;

architecture abstract of memory_unit2 is
--type memory2_arr is array(0 to 65535) of std_logic_vector(15 downto 0);
type memory2_arr is array(0 to 127) of std_logic_vector(15 downto 0);
signal data : memory2_arr := (0 => "0000001000000000", 1 => "0010000111001001", others => (others => '0')); --Load with Program
--signal data : memory2_arr := (others => (others => '0'));

begin
    memory2_proc: process(CLK,RST)
    begin
        --if (RST = '1') then null;
        if (CLK'event and CLK = '0') then  
            if (MWR_2 = '1') then
                data(to_integer(unsigned(mem2_address))) <= mem2_data_in;
				 elsif(MDR_2 = '1') then
				     mem2_data_out <= data(to_integer(unsigned(mem2_address)));
            end if;
        end if;
    end process memory2_proc;

end architecture abstract;


------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mem_access is 
   port(ID_in_6: in std_logic_vector(15 downto 0);                        ---instr input to MA stage
	     mem2_wr, mem2_rd: in std_logic;
	     mux8: in std_logic;
	     CLK, RST: in std_logic;
	     mem2_add, mem2_in, mux8_out: in std_logic_vector(15 downto 0);
	     rf_a3_pipe_3: out std_logic_vector(2 downto 0);
	     mux_out, ID_in_7: out std_logic_vector(15 downto 0));
end mem_access;

architecture mem_flow of mem_access is 

   component memory_unit2 is 
	 port(CLK : in std_logic;
        MWR_2 : in std_logic;     ---write enable bit
		  MDR_2 : in std_logic;     ---read enable bit
        RST : in std_logic;     
        mem2_address : in std_logic_vector(15 downto 0);
        mem2_data_in : in std_logic_vector(15 downto 0);
        mem2_data_out : out std_logic_vector(15 downto 0));
	end component;
	
signal mem2_out : std_logic_vector(15 downto 0);

begin

ID_in_7 <= ID_in_6;
--Data Memory
memory2 : memory_unit2 port map (CLK => CLK, MWR_2 => mem2_wr, MDR_2 => mem2_rd, RST => RST, mem2_address => mem2_add, mem2_data_in => mem2_in, mem2_data_out => mem2_out);

MA_process: process(CLK, RST, mux8_out, mem2_out, mux8)
begin  

  if (mux8 = '1') then
    mux_out <= mem2_out;
  else 
     mux_out <= mux8_out;
  end if;
  
end process;
end architecture mem_flow;