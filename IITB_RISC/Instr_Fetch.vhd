library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is 
    port(
        pc_in : in std_logic_vector(15 downto 0);
		  CLK,RST: in std_logic;
		  pc_enable: in std_logic;
        pc_out : out std_logic_vector(15 downto 0));
end entity;

architecture program of PC is

	signal pc_data : std_logic_vector(15 downto 0);
	
begin

	 write_proc: process(pc_enable,pc_in)
	 begin 
	     if(pc_enable = '1') then 
	        pc_data <= pc_in;
	     end if;
	 end process write_proc;

    read_proc: process(CLK,RST,pc_data)
    begin
		  if(RST = '1') then pc_out <= "0000000000000000";
        elsif (CLK'event and CLK = '0') then  --writing at negative clock edge
            pc_out <= pc_data;
        end if;
    end process read_proc;

end program;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory_unit1 is
    port(CLK : in std_logic;
        RST : in std_logic;     
        mem1_address : in std_logic_vector(15 downto 0);
        mem1_inst : out std_logic_vector(15 downto 0));
    
end entity;

architecture tacit of memory_unit1 is

--type memory1_arr is array(0 to 65535) of std_logic_vector(15 downto 0);
type memory1_arr is array(0 to 127) of std_logic_vector(15 downto 0);

signal inst : memory1_arr := (others => (others => '0'));
--signal mem1_instp : std_logic_vector(15 downto 0):= (others => '0');

-- we can feed our instructions here in this array before executing the program

begin
    memory1_proc: process(CLK,RST)
    begin
      if (RST = '1') then 
		mem1_inst <= (others => '0');
    elsif (falling_edge(CLK)) then
	        mem1_inst <= inst(to_integer(unsigned(mem1_address)));
       
		  end if;
   end process memory1_proc;
--mem1_inst <=  mem1_instp;

end architecture tacit;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU2 is
 port (
   ALU2_A: in std_logic_vector(15 downto 0);
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


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instr_fetch is 
   port(alu3_outp: in std_logic_vector(15 downto 0);
	     PC_WR, mux9: in std_logic;
		  CLK, RST: in std_logic;
		  alu2_out, mem1_out: out std_logic_vector(15 downto 0));               
end instr_fetch;

architecture fetch_flow of instr_fetch is 

   component ALU2 is
	  port(ALU2_A: in std_logic_vector(15 downto 0);
          ALU2_C: out std_logic_vector(15 downto 0));
	end component;
	
	component PC is 
     port(pc_in: in std_logic_vector(15 downto 0);
		    CLK,RST: in std_logic;
		    pc_enable: in std_logic;
          pc_out: out std_logic_vector(15 downto 0));
	end component;
	
	component memory_unit1 is 
	  port(CLK : in std_logic;     
         RST : in std_logic;     
          mem1_address : in std_logic_vector(15 downto 0);
          mem1_inst : out std_logic_vector(15 downto 0));
	end component;

signal alu2_outp, pc_outp, pc_inp: std_logic_vector(15 downto 0);

begin

alu2_instance: ALU2 port map(ALU2_A => pc_outp, ALU2_C => alu2_outp);
mem1_instance: memory_unit1 port map(CLK => CLK, RST => RST, mem1_address => pc_outp, mem1_inst => mem1_out);
pc_instance: PC port map(pc_in => pc_inp, CLK => CLK, RST => RST, pc_enable => PC_WR, pc_out => pc_outp);

IF_process: process(mux9, alu3_outp, alu2_outp, CLK)
begin
   
	if(RST = '1') then 
	 null;
	 
    elsif (falling_edge(CLK)) then
   if(mux9 = '1') then
	   pc_inp <= alu3_outp;
	else pc_inp <= alu2_outp;
	end if;
	
  end if;	
end process;

alu2_out <= alu2_outp;

end architecture fetch_flow;


	  

