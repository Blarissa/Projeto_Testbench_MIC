LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

----------- Entidade do Testbench -------
ENTITY tb_projeto_mic IS
END tb_projeto_mic;

----------- Arquitetura do Testbench -------
ARCHITECTURE tbench OF tb_projeto_mic IS
COMPONENT projeto_mic
PORT (
	 CLK : IN STD_LOGIC;
    RESET : IN STD_LOGIC;
    AMUX : IN STD_LOGIC;
    ALU : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    MBR : IN STD_LOGIC;
    MAR : IN STD_LOGIC;
    RD : IN STD_LOGIC;
    WR : IN STD_LOGIC;
    ENC : IN STD_LOGIC;
    C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SH : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    MEM_TO_MBR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    DATA_OK : IN STD_LOGIC;
    MBR_TO_MEM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    MAR_OUTPUT : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    RD_OUTPUT : OUT STD_LOGIC;
    WR_OUTPUT : OUT STD_LOGIC;
    Z : OUT STD_LOGIC;
    N : OUT STD_LOGIC);
END COMPONENT;

SIGNAL signal_CLK 		 : STD_LOGIC;
SIGNAL signal_RESET 		 : STD_LOGIC;
SIGNAL signal_AMUX 		 : STD_LOGIC;
SIGNAL signal_ALU 		 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL signal_MBR 		 : STD_LOGIC;
SIGNAL signal_MAR 		 : STD_LOGIC;
SIGNAL signal_RD 			 : STD_LOGIC;
SIGNAL signal_WR 			 : STD_LOGIC;
SIGNAL signal_ENC 	    : STD_LOGIC;
SIGNAL signal_C 			 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL signal_B 			 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL signal_A 			 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL signal_SH 			 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL signal_MEM_TO_MBR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL signal_DATA_OK 	 : STD_LOGIC;
SIGNAL signal_MBR_TO_MEM : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL signal_MAR_OUTPUT : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL signal_RD_OUTPUT  : STD_LOGIC;
SIGNAL signal_WR_OUTPUT  : STD_LOGIC;
SIGNAL signal_Z 			 : STD_LOGIC;
SIGNAL signal_N 			 : STD_LOGIC;

BEGIN

Dut : projeto_mic PORT MAP (
    CLK 			=> signal_CLK,
    RESET 		=> signal_RESET,
    AMUX 		=> signal_AMUX,
    ALU 			=> signal_ALU,
    MBR 			=> signal_MBR,
    MAR 			=> signal_MAR,
    RD 			=> signal_RD,
    WR 			=> signal_WR,
    ENC 			=> signal_ENC,
    C 			=> signal_C,
    B 			=> signal_B,
    A 			=> signal_A,
    SH 			=> signal_SH,
    MEM_TO_MBR => signal_MEM_TO_MBR,
    DATA_OK 	=> signal_DATA_OK,
    MBR_TO_MEM => signal_MBR_TO_MEM,
    MAR_OUTPUT => signal_MAR_OUTPUT,
    RD_OUTPUT 	=> signal_RD_OUTPUT,
    WR_OUTPUT 	=> signal_WR_OUTPUT,
    Z 			=> signal_Z,
    N 			=> signal_N
);

clk_process : PROCESS
BEGIN
    signal_CLK <= '0';
    WAIT FOR 5 ns;
    signal_CLK <= '1';
    WAIT FOR 5 ns;
END PROCESS;


--- Processo de RESET ---
reset_process : PROCESS
BEGIN
    signal_RESET <= '1';
    WAIT FOR 10 ns;
    signal_RESET <= '0';
    WAIT;
END PROCESS;

--- Processo de JUMP ---
jump_process : PROCESS
BEGIN
    signal_MAR <= '1'; 
    signal_ENC <= '1';
    signal_AMUX <= '0';
    signal_ALU <= "00";
    signal_MBR <= '1';
    signal_RD <= '0';
    signal_WR <= '0';
    signal_SH <= "00";
    signal_MEM_TO_MBR <= "0000000000001111";
    signal_DATA_OK <= '1';
    WAIT FOR 10 ns;
    IF signal_MAR_OUTPUT = "0000000000001111" THEN
        REPORT "JUMP PASSED";
    ELSE 
        REPORT "JUMP FAILED";
    END IF;
    WAIT;
END PROCESS;

--- Processo de STOD ---
stod_process : PROCESS
BEGIN
    signal_MAR <= '0'; 
    signal_ENC <= '1';
    signal_AMUX <= '1';
    signal_ALU <= "00";
    signal_MBR <= '1';
    signal_RD <= '0';
    signal_WR <= '1';
    signal_SH <= "00";
    signal_MEM_TO_MBR <= "0000000000001111";
    signal_DATA_OK <= '1';
    WAIT FOR 10 ns;
    IF signal_MBR_TO_MEM = "0000000000001111" THEN
        REPORT "STOD PASSED";
    ELSE 
        REPORT "STOD FAILED";
    END IF;
    WAIT;
END PROCESS;

--- Processo de LODL ---
lodl_process : PROCESS
BEGIN
    signal_MAR <= '0'; 
    signal_ENC <= '1';
    signal_AMUX <= '1';
    signal_ALU <= "00";
    signal_MBR <= '1';
    signal_RD <= '1';
    signal_WR <= '0';
    signal_SH <= "00";
    signal_MEM_TO_MBR <= "0000000000001111";
    signal_DATA_OK <= '1';
    WAIT FOR 10 ns;
    IF signal_MBR = '1' THEN
        REPORT "LODL PASSED";
    ELSE 
        REPORT "LODL FAILED";
    END IF;
    WAIT;
END PROCESS;

--- Processo de PSHI ---
pshi_process : PROCESS
BEGIN
    signal_MAR <= '0'; 
    signal_ENC <= '1';
    signal_AMUX <= '1';
    signal_ALU <= "00";
    signal_MBR <= '1';
    signal_RD <= '0';
    signal_WR <= '1';
    signal_SH <= "00";
    signal_MEM_TO_MBR <= "0000000000001111";
    signal_DATA_OK <= '1';
    WAIT FOR 10 ns;
    IF signal_MBR_TO_MEM = "0000000000001111" THEN
        REPORT "PSHI PASSED";
    ELSE 
        REPORT "PSHI FAILED";
    END IF;
    WAIT;
END PROCESS;

END tbench;