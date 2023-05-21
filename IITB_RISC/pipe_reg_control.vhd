library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pipe_reg_control is
    port (
        CLK: in std_logic;
        RST: in std_logic;
        instruction: in std_logic_vector(15 downto 0);-- this is the input instruction of inst.decode stage
        enable_out: out std_logic_vector(4 downto 0); -- enable pins of 5 pipeline registers
		  pc_wr: out std_logic);
end entity pipe_reg_control;

architecture Behavioral of pipe_reg_control is
    signal enable_internal: std_logic_vector(4 downto 0);
    signal stall_counter: unsigned(2 downto 0) := (others => '0');
    signal is_branch_or_jump: std_logic;
    signal pc_write: std_logic;
begin

    process (CLK, RST)
    begin
        if (RST = '1') then
            enable_internal <= (others => '0');
				pc_write <= '0';
            stall_counter <= (others => '0');
            is_branch_or_jump <= '0';
        elsif (CLK'event and CLK = '0') then
    -- Determine if the instruction is a beq/blt/ble/jal/jlr/jri
    is_branch_or_jump <= '0';
    if (instruction(15 downto 12) = "1000" or instruction(15 downto 12) = "1001" or
        instruction(15 downto 12) = "1100" or instruction(15 downto 12) = "1101"
        or instruction(15 downto 12) = "1111") then
        is_branch_or_jump <= '1';
    end if;

    -- Stall the pipeline for 3 clock cycles if it's a branch or jump
    if (is_branch_or_jump = '1') then
        if (stall_counter < 3) then
            stall_counter <= stall_counter + 1;
            enable_internal <= "01111"; -- stalling IF/ID PIPE_REG for 3 clk cycles
            pc_write <= '0';
        else
            stall_counter <= (others => '0');
            enable_internal <= "11111";
            pc_write <= '1';
        end if;
    else
        enable_internal <= "11111";
        pc_write <= '1';
        stall_counter <= (others => '0'); -- Reset the stall counter
    end if;
end if;
    end process;

    enable_out <= enable_internal;
    pc_wr <= pc_write;
end architecture;