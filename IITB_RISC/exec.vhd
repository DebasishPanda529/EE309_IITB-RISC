library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU1 is
 port (
   ALU1_A: in std_logic_vector(15 downto 0);
   ALU1_B: in std_logic_vector(15 downto 0);
	CV,EN: in std_logic_vector(1 downto 0);        ---control variables to decide the operation, enable to decide whether to modify C/Z(EN(0):C,EN(1):Z)
	C_in,Z_in: in std_logic;                       ---initial carry,zero flags
	C0, Z0: out std_logic;                         ---to retain initial value of zero while executing BEQ, and initial value of carry during BLT/BLE
   ALU1_C: out std_logic_vector(15 downto 0);
	C,Z: out std_logic) ;
end ALU1;

architecture alu1_arch of ALU1 is

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
    
    return carry(15) & sum;  
 end add;
 
 
begin  

alu1_proc: process(ALU1_A, ALU1_B, C_in, Z_in, CV, EN) 
 
variable dummy: std_logic_vector(15 downto 0) := "0000000000000000";
variable dummy_1: std_logic_vector(16 downto 0) := "00000000000000000";
variable dummy_sub: std_logic_vector(16 downto 0) := "00000000000000000";
variable dummy_sub_1: std_logic_vector(16 downto 0) := "00000000000000000";
variable C_init,Z_init : std_logic := '0'; 

begin

if CV = "00" then
  dummy_1 := add(ALU1_A,ALU1_B);
  ALU1_C <= dummy_1(15 downto 0);                        ---add function returns 17-bit value, we need 16-bit sum value
  C_init := dummy_1(16);
  
  if(dummy_1 = "00000000000000000") then                 ---conditional to check for zero output
     Z_init := '1';
  end if;
  
  if(EN(0) = '1') then
     C <= C_init;                                        ---conditional to check if C is to be modified
  else
     C <= C_in;
  end if;
  
  if(EN(1) = '1') then                                   ---conditional to check if Z is to be modified 
     Z <= Z_init;
  else
     Z <= Z_in;
  end if;
  
  C0 <= C_in;
  Z0 <= Z_in;                                            ---doesn't matter whether C0, Z0 are upadated here or not, I don't need them anyways
  
  
elsif CV = "01" then                                     ---NAND function always modifies the Z flag, so we don't need any conditionals here
  ALU1_C <= ALU1_A nand ALU1_B;
  dummy := ALU1_A nand ALU1_B;
  
  if(dummy = "0000000000000000") then
     Z <= '1';
  else 
     Z <= '0';
  end if;
  
  C <= C_in;
  C0 <= C_in;
  Z0 <= Z_in;                                            ---same situation as in ADD
  
  
elsif CV = "10" then                                      
  ALU1_C <= ALU1_A xor ALU1_B;
  dummy := ALU1_A xor ALU1_B;
  dummy_sub := add(ALU1_A, not(ALU1_B));
  dummy_sub_1 := add(dummy_sub(15 downto 0), "0000000000000001");
  
  if(dummy = "0000000000000000") then 
     Z_init := '1';
	  Z0 <= Z_init;
  else 
     Z0 <= Z_in;
  end if;
  
  if(EN(1) = '1') then                                   ---conditional to check if Z is to be modified 
     Z <= Z_init;
  else
     Z <= Z_in;
  end if; 
  
  C0 <= dummy_sub_1(16);
  C <= C_in; 
  
  
else                                                    
  null;
  
end if;
  
end process;
end alu1_arch;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity ALU3 is
 port (
   ALU3_A: in std_logic_vector(15 downto 0);
   ALU3_B: in std_logic_vector(15 downto 0);
   ALU3_C: out std_logic_vector(15 downto 0));
end ALU3;

architecture alu3_arch of ALU3 is

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

alu3_proc: process(ALU3_A,ALU3_B) 
begin 
ALU3_C <= add(ALU3_A,ALU3_B);
end process;
end alu3_arch;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sign_extend_1 is 
port(SE_in_1: in std_logic;
     SE_out_1: out std_logic_vector(15 downto 0));
end entity sign_extend_1;

architecture Extend_1 of sign_extend_1 is
begin
SE_out_1(0) <= SE_in_1;
SE_out_1(15 downto 1) <= "000000000000000";
end Extend_1;


---------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity exec is 
   port(ID_in_4, rf_d2_EX_in: in std_logic_vector(15 downto 0);
	     rf_a3_pipe_1: in std_logic_vector(2 downto 0);
	     alu1_in, alu2_out, s10_in, s11_in: in std_logic_vector(15 downto 0); 
	     CLK, RST: in std_logic;
		  Z_in, C_in, mux6: in std_logic;
		  CV, EN, mux10 : in std_logic_vector(1 downto 0);
		  C, Z: out std_logic;
		  C0, Z0: out std_logic;
		  mux10_out, alu3_out, alu1_out: out std_logic_vector(15 downto 0);
		  ID_in_5, rf_d2_EX_out: out std_logic_vector(15 downto 0);
		  rf_a3_pipe_2: out std_logic_vector(2 downto 0));
end exec;

architecture exec_flow of exec is

	component ALU1 is 
	  port(ALU1_A: in std_logic_vector(15 downto 0);
          ALU1_B: in std_logic_vector(15 downto 0);
	       CV,EN: in std_logic_vector(1 downto 0);       
	       C_in,Z_in: in std_logic;                      
	       C0, Z0: out std_logic;                             
          ALU1_C: out std_logic_vector(15 downto 0);
	       C,Z: out std_logic);
	end component;
	
	component ALU3 is
	  port(ALU3_A: in std_logic_vector(15 downto 0);
          ALU3_B: in std_logic_vector(15 downto 0);
          ALU3_C: out std_logic_vector(15 downto 0));
	end component;
	
	component shifter is 
	  port(data_in : in std_logic_vector(15 downto 0);
	       shift_enable : in std_logic;
	       data_out : out std_logic_vector(15 downto 0));
	end component;
	
	component sign_extend_1 is
	  port(SE_in_1: in std_logic;
          SE_out_1: out std_logic_vector(15 downto 0));
	end component;
	
signal alu1_c, alu3_a, se1_out, alu3_c, s1_data_out, alu4_c : std_logic_vector(15 downto 0);
signal carry, init_zero : std_logic;

begin

rf_d2_EX_out <= rf_d2_EX_in;
rf_a3_pipe_2 <= rf_a3_pipe_1;
ID_in_5 <= ID_in_4;
C <= carry;
alu1_out <= alu1_c;
alu3_out <= alu3_c;

alu1_instance: ALU1 port map(ALU1_A => alu1_in, ALU1_B => s10_in, CV => CV, EN => EN, C_in => C_in, Z_in => Z_in, C0 => C0, Z0 => Z0, ALU1_C => alu1_c, C => carry, Z => Z);
alu3_instance: ALU3 port map(ALU3_A => alu3_a, ALU3_B => s11_in, ALU3_C => alu3_c);
alu4_instance: ALU3 port map(ALU3_A => se1_out, ALU3_B => alu1_c, ALU3_C => alu4_c);
SE1: sign_extend_1 port map(SE_in_1 => carry, SE_out_1 => se1_out);

EX_process: process(CLK, RST, mux6, alu2_out, alu1_c, alu4_c, alu3_c)
begin

 if (RST = '1') then
      null;
    elsif (falling_edge(CLK)) then

	if(mux6 = '1') then
	   alu3_a <= alu2_out;
	else alu3_a <= alu1_c;
	end if;
	
	if(mux10 = "11") then 
	   mux10_out <= alu4_c;
	elsif(mux10 = "10") then
	   mux10_out <= alu1_c;
	elsif(mux10 = "01") then
	   mux10_out <= alu3_c;
	else null;
	end if;

end if;	
end process;
end architecture exec_flow;