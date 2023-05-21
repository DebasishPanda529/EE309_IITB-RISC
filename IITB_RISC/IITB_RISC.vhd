library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IITB_RISC is 
   port(CLK, RST: in std_logic);
end IITB_RISC;

architecture complex of IITB_RISC is

component instr_fetch is
   port(alu3_outp: in std_logic_vector(15 downto 0);
	     PC_WR, mux9: in std_logic;
		  CLK, RST: in std_logic;
		  alu2_out, mem1_out: out std_logic_vector(15 downto 0));
end component;

component Instr_Decode is 
   port(CLK, RST : in std_logic;
	     ID_in, alu2_in: in std_logic_vector(15 downto 0); 
	     ID_out1, ID_out2, ID_out3: out std_logic_vector(2 downto 0);
		  ID_out4: out std_logic_vector(5 downto 0);
		  ID_out5: out std_logic_vector(8 downto 0);
		  ID_in_1, alu2_out_1: out std_logic_vector(15 downto 0));
end component;

component reg_read is
   port(ID_in_2, alu2_in_1: in std_logic_vector(15 downto 0);
	     EX_fwd, MA_fwd, WB_fwd: in std_logic_vector(15 downto 0);                                                             
		  EX_hzd_4, MA_hzd_4, WB_hzd_4: in std_logic;                                                         
		  EX_hzd_5, MA_hzd_5, WB_hzd_5: in std_logic; 		                                                  
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
		  ID_in_3, alu2_out_2, rf_d2_RR: out std_logic_vector(15 downto 0));
end component;

component exec is 
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
end component;

component mem_access is 
   port(ID_in_6: in std_logic_vector(15 downto 0);                       
	     mem2_wr, mem2_rd: in std_logic;
	     mux8: in std_logic;
	     CLK, RST: in std_logic;
	     mem2_add, mem2_in, mux8_out: in std_logic_vector(15 downto 0);
	     rf_a3_pipe_3: out std_logic_vector(2 downto 0);
	     mux_out, ID_in_7: out std_logic_vector(15 downto 0));
end component;

component pipe_reg1 is
   port(alu2_outp, mem1_outp: in std_logic_vector(15 downto 0);
		  CLK,RST: in std_logic;
		  pipe_reg1_enable: in std_logic;
        instr_ID_1, alu2_outp_1: out std_logic_vector(15 downto 0));
end component;

component pipe_reg2 is
   port(ID_outp1, ID_outp2, ID_outp3: in std_logic_vector(2 downto 0);
		  ID_outp4: in std_logic_vector(5 downto 0);
		  ID_outp5: in std_logic_vector(8 downto 0);
		  instr_ID_2: in std_logic_vector(15 downto 0);          
		  alu2_outp_2: in std_logic_vector(15 downto 0);
		  CLK,RST: in std_logic;
		  pipe_reg2_enable: in std_logic;
        reg_read, reg_write, mux1_1, mux2_1, mux4_1, shift_enable_11, shift_enable_21, cmp_en_1: out std_logic;
		  mux3_1, mux5_1, mux7_1: out std_logic_vector(1 downto 0);
		  mem1_data_11_9_1, mem1_data_8_6_1, mem1_data_5_3_1: out std_logic_vector(2 downto 0);
		  extend6_in_1: out std_logic_vector(5 downto 0);
		  extend9_in_1: out std_logic_vector(8 downto 0);		  
		  alu2_outp_3: out std_logic_vector(15 downto 0);
		  instr_RR_1: out std_logic_vector(15 downto 0));
end component;

component pipe_reg3 is
   port(rf_a3_1: in std_logic_vector(2 downto 0);
	     instr_RR_2: in std_logic_vector(15 downto 0);
        alu2_outp_4, mux4_out_1, s1_1_in, s1_2_in, rf_d2_1: in std_logic_vector(15 downto 0);            
	     CLK, RST: in std_logic;
		  pipe_reg3_enable: in std_logic;
		  instr_EX_1: out std_logic_vector(15 downto 0);
        alu1_in_1, s1_1_out, s1_2_out, rf_d2_2, alu2_outp_5: out std_logic_vector(15 downto 0);
		  CV_1, EN_1, mux10_1: out std_logic_vector(1 downto 0);
		  C_in_1, Z_in_1, mux6_1: out std_logic;
		  rf_a3_2: out std_logic_vector(2 downto 0));
end component;

component pipe_reg4 is
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
end component;

component pipe_reg5 is
   port(rf_a3_5: in std_logic_vector(2 downto 0);
		  CLK,RST: in std_logic;
		  pipe_reg5_enable: in std_logic;
        mux8_out_1, instr_MA_2:  in std_logic_vector(15 downto 0);    
		  rf_a3_6: out std_logic_vector(2 downto 0);        
		  rf_d3_out, instr_WB_1: out std_logic_vector(15 downto 0));
end component;

component branch_jump_control is 
   port(instr: in std_logic_vector(15 downto 0);
        C0_pipe_reg4, Z0_pipe_reg4: in std_logic;
        mux9: out std_logic);
end component;

component data_hazard_1 is
   port(instr_EX, instr_RR: in std_logic_vector(15 downto 0);
        mux4_control, mux5_control: out std_logic);
end component;                                                                   

component data_hazard_2 is 
   port(instr_EX, instr_MA: in std_logic_vector(15 downto 0);
        mux4_control_1, mux5_control_1: out std_logic);
end component;                                                                      

component data_hazard_3 is 
   port(instr_EX, instr_WB: in std_logic_vector(15 downto 0);
        mux4_control_2, mux5_control_2: out std_logic);
end component;            

component pipe_reg_control is 
   port (CLK: in std_logic;
         RST: in std_logic;
         instruction: in std_logic_vector(15 downto 0);
         enable_out: out std_logic_vector(4 downto 0); 
		   pc_wr: out std_logic);
end component;	


signal ifout1, ifout2, ifin1, p1out1, p1out2: std_logic_vector(15 downto 0);
signal pc, m9, regread, regwrite, mux11, mux21, mux41, se11, se21, cen1, mem2wr, mem2rd, mux801: std_logic;
signal idout4: std_logic_vector(5 downto 0);
signal idout1, idout2, idout3: std_logic_vector(2 downto 0);
signal idout5:std_logic_vector(8 downto 0);
signal idin1, alu2out1: std_logic_vector(15 downto 0);
signal mux31, mux51, mux71: std_logic_vector(1 downto 0);
signal m1d1191, m1d861, m1d531: std_logic_vector(2 downto 0);
signal e6in1: std_logic_vector(5 downto 0);
signal e9in1: std_logic_vector(8 downto 0);
signal alu2out3: std_logic_vector(15 downto 0);
signal idin2, alu2in1: std_logic_vector(15 downto 0);
signal regrd, regwr, mux1, mux2, mux4, she1, she2, cpen: std_logic;
signal mux3, mux5, mux7: std_logic_vector(1 downto 0);
signal m1d119, m1d86, m1d53:std_logic_vector(2 downto 0);
signal e6in: std_logic_vector(5 downto 0);
signal e9in: std_logic_vector(8 downto 0);
signal rfa3: std_logic_vector(2 downto 0);
signal rfd3: std_logic_vector(15 downto 0);
signal mux4out, sout1, sout2: std_logic_vector(15 downto 0);
signal rfa3pipe1, rfa3pipe2, rfa3pipe3: std_logic_vector(2 downto 0);
signal idin3, idin4, alu2out2, rfd2rr: std_logic_vector(15 downto 0);
signal instrex1: std_logic_vector(15 downto 0);
signal alu1in1, s11out, s12out, rfd22, alu2out5: std_logic_vector(15 downto 0);
signal cv1, en1, mux101: std_logic_vector(1 downto 0);
signal cin1, zin1, mux61: std_logic;
signal rfa32: std_logic_vector(2 downto 0);
signal c,z: std_logic;
signal c0, z0: std_logic;
signal mux10out, alu3out, alu1out: std_logic_vector(15 downto 0);
signal idin5, idin6, idin7, idin8, rfd2exout: std_logic_vector(15 downto 0);
signal muxout, m2addi1, m2dain1:  std_logic_vector(15 downto 0);
signal alu3op1: std_logic; 
signal m2rd, m2wr, c01, z01:  std_logic; 
signal rfa3out: std_logic_vector(2 downto 0);
signal rfd3out: std_logic_vector(15 downto 0); 
signal pipe_control: std_logic_vector(4 downto 0); 
signal mux4_ctrl: std_logic_vector(2 downto 0);
signal mux5_ctrl: std_logic_vector(2 downto 0);

begin

IF_instance: instr_fetch port map(alu3_outp=>ifin1, alu2_out=>ifout1, mem1_out=>ifout2, PC_WR=>pc, mux9=>m9, CLK=>CLK, RST=>RST);     
ID_instance: Instr_Decode port map(CLK=>CLK, RST=>RST, ID_in=>p1out1, alu2_in=>p1out2, ID_out1=>idout1, ID_out2=>idout2, ID_out3=>idout3, ID_out4=>idout4, ID_out5=>idout5, ID_in_1=>idin1, alu2_out_1=>alu2out1);  
RR_instance: reg_read port map(ID_in_2=>idin2, alu2_in_1=>alu2out3, EX_fwd=>mux10out, MA_fwd=>muxout, WB_fwd=>rfd3out, EX_hzd_4=>mux4_ctrl(0), MA_hzd_4=>mux4_ctrl(1), WB_hzd_4=>mux4_ctrl(2), EX_hzd_5=>mux5_ctrl(0), MA_hzd_5=>mux5_ctrl(1), wb_hzd_5=>mux5_ctrl(2), reg_rd=>regread, reg_wr=>regwrite, mux1=>mux11, mux2=>mux21, mux4=>mux41, shift_enable_1=>se11, shift_enable_2=>se21, cmp_en=>cen1, mux3=>mux31, mux5=>mux51, mux7=>mux71, CLK=>CLK, RST=>RST, mem1_data_11_9=>m1d1191, mem1_data_8_6=>m1d861, mem1_data_5_3=>m1d531, extend6_in=>e6in1, extend9_in=>e9in1, rf_a3=>rfa3out, rf_d3=>rfd3out, mux4_out=>mux4out, shifter_out_1=>sout1, shifter_out_2=>sout2, rf_a3_pipe=>rfa3pipe1, ID_in_3=>idin3, alu2_out_2=>alu2out2, rf_d2_RR=>rfd2rr);  
EX_instance: exec port map(ID_in_4=>idin4, rf_d2_EX_in=>rfd22, rf_a3_pipe_1=>rfa3pipe2, alu1_in=>alu1in1, alu2_out=>alu2out5, s10_in=>sout1, s11_in=>sout2, CLK=>CLK, RST=>RST, Z_in=>zin1, C_in=>cin1, mux6=>mux61, CV=>cv1, EN=>en1, mux10=>mux101, C=>c, Z=>z, C0=>c0, Z0=>z0, mux10_out=>mux10out, alu3_out=>alu3out, alu1_out=>alu1out, ID_in_5=>idin5, rf_d2_EX_out=>rfd2exout, rf_a3_pipe_2=>rfa3pipe2);  
MA_instance: mem_access port map(ID_in_6=>idin6, mem2_wr=>mem2wr, mem2_rd=>mem2rd, mux8=>mux801, CLK=>CLK, RST=>RST, mem2_add=>m2addi1, mem2_in=>m2dain1, mux8_out=>mux10out, rf_a3_pipe_3=>rfa3pipe3, mux_out=>muxout, ID_in_7=>idin7);  

pipe_reg1_instance: pipe_reg1 port map(alu2_outp=>ifout1, mem1_outp=>ifout2, CLK=>CLK, RST=>RST, pipe_reg1_enable=>pipe_control(4), instr_ID_1=>p1out1, alu2_outp_1=>p1out2);       
pipe_reg2_instance: pipe_reg2 port map(ID_outp1=>idout1, ID_outp2=>idout2, ID_outp3=>idout3, ID_outp4=>idout4, ID_outp5=>idout5, instr_ID_2=>idin1, alu2_outp_2=>alu2out1, CLK=>CLK, RST=>RST, pipe_reg2_enable=>pipe_control(3), reg_read=>regread, reg_write=>regwrite, mux1_1=>mux11, mux2_1=>mux21, mux4_1=>mux41, shift_enable_11=>se11, shift_enable_21=>se21, cmp_en_1=>cen1, mux3_1=>mux31, mux5_1=>mux51, mux7_1=>mux71, mem1_data_11_9_1=>m1d1191, mem1_data_8_6_1=>m1d861, mem1_data_5_3_1=>m1d531, extend6_in_1=>e6in1, extend9_in_1=>e9in1, alu2_outp_3=>alu2out3, instr_RR_1=>idin2); 
pipe_reg3_instance: pipe_reg3 port map(rf_a3_1=>rfa3pipe1, instr_RR_2=>idin3, alu2_outp_4=>alu2out2, mux4_out_1=>mux4out, s1_1_in=>sout1, s1_2_in=>sout2, rf_d2_1=>rfd2rr, CLK=>CLK, RST=>RST, pipe_reg3_enable=>pipe_control(2), instr_EX_1=>idin4, alu1_in_1=>alu1in1, s1_1_out=>s11out, s1_2_out=>s12out, rf_d2_2=>rfd22, alu2_outp_5=>alu2out5, CV_1=>cv1, EN_1=>en1, mux10_1=>mux101, C_in_1=>cin1, Z_in_1=>zin1, mux6_1=>mux61, rf_a3_2=>rfa3pipe2);
pipe_reg4_instance: pipe_reg4 port map(instr_EX_2=>idin5, alu3_out_1=>alu3out, mux10_out_1=>mux10out, alu1_out_1=>alu1out, rf_d2_3=>rfd2exout, rf_a3_3=>rfa3pipe2, CLK=>CLK, RST=>RST, C0_in=>c0, Z0_in=>z0, pipe_reg4_enable=>pipe_control(1), alu3_out_pipe=>ifin1, mem2_address_in_1=>m2addi1, mem2_data_in_1=>m2dain1, mem2_read=>m2rd, mem2_write=>m2wr, mux8_1=>mux801, C0_out=>c01, Z0_out=>z01, instr_MA_1=>idin6, mux10_out_2=>mux10out, rf_a3_4=>rfa3pipe3);
pipe_reg5_instance: pipe_reg5 port map(rf_a3_5=>rfa3pipe3, CLK=>CLK, RST=>RST, pipe_reg5_enable=>pipe_control(0), mux8_out_1=>muxout, instr_MA_2=>idin7, rf_a3_6=>rfa3out, rf_d3_out=>rfd3out, instr_WB_1=>idin8);
      
mux9_control_instance: branch_jump_control port map(instr=>p1out1 , C0_pipe_reg4=>c0, Z0_pipe_reg4=>z0, mux9=>m9);  
        
hazard_1: data_hazard_1 port map(instr_EX=>idin5, instr_RR=>idin3, mux4_control=>mux4_ctrl(0), mux5_control=>mux5_ctrl(0));
hazard_2: data_hazard_2 port map(instr_EX=>idin5, instr_MA=>idin6, mux4_control_1=>mux4_ctrl(1), mux5_control_1=>mux5_ctrl(1));
hazard_3: data_hazard_3 port map(instr_EX=>idin5, instr_WB=>idin7, mux4_control_2=>mux4_ctrl(2), mux5_control_2=>mux5_ctrl(2));

pipeline_control: pipe_reg_control port map(CLK=>CLK, RST=>RST, instruction=>p1out1, enable_out=>pipe_control, pc_wr=>pc);

end architecture complex;