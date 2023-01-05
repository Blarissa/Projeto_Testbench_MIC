library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use std.textio.all;

----------- Entidade do Testbench -------
ENTITY Testbench_MIC IS
END Testbench_MIC;

Architecture Type_3 OF Testbench_MIC IS

SIGNAL Signal_CLK 	  	 : std_logic;
SIGNAL Signal_RESET 		 : std_logic;
SIGNAL Signal_AMUX 		 : std_logic;
SIGNAL Signal_ALU 		 : std_logic_vector(1 DOWNTO 0);
SIGNAL Signal_MBR 		 : std_logic;
SIGNAL Signal_MAR 		 : std_logic;
SIGNAL Signal_RD 			 : std_logic;
SIGNAL Signal_WR 			 : std_logic;
SIGNAL Signal_ENC 		 : std_logic;
SIGNAL Signal_C			 : std_logic_vector(3 DOWNTO 0);
SIGNAL Signal_B 			 : std_logic_vector(3 DOWNTO 0);
SIGNAL Signal_A 			 : std_logic_vector(3 DOWNTO 0);
SIGNAL Signal_SH 			 : std_logic_vector(1 DOWNTO 0);
SIGNAL Signal_MEM_TO_MBR : std_logic_vector(15 DOWNTO 0);
SIGNAL Signal_DATA_OK 	 : std_logic;
 
SIGNAL Signal_MBR_TO_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL Signal_MAR_Output : std_logic_vector(11 DOWNTO 0);
SIGNAL Signal_RD_Output  : std_logic;
SIGNAL Signal_WR_Output  : std_logic;
SIGNAL Signal_Z			 : std_logic;
SIGNAL Signal_N 			 : std_logic;

COMPONENT PROJETO_MIC IS
PORT(
		CLK 			: IN STD_LOGIC;
		RESET 		: IN STD_LOGIC;
		AMUX 			: IN STD_LOGIC;
		ALU 			: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		MBR 			: IN STD_LOGIC;
		MAR 			: IN STD_LOGIC;
		RD 			: IN STD_LOGIC;
		WR 			: IN STD_LOGIC;
		ENC 			: IN STD_LOGIC;
		C 				: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		B 				: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		A 				: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SH 			: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		MEM_TO_MBR 	: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		DATA_OK 		: IN STD_LOGIC;
 
		MBR_TO_MEM 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		MAR_OUTPUT 	: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		RD_OUTPUT 	: OUT STD_LOGIC;
		WR_OUTPUT 	: OUT STD_LOGIC;
		Z 				: OUT STD_LOGIC;
		N 				: OUT STD_LOGIC);
END COMPONENT;

BEGIN
-- Instanciação do projeto a ser testado
Dut: PROJETO_MIC
PORT MAP(
		CLK 			=> Signal_CLK,
		RESET 		=> Signal_RESET,
		AMUX 			=> Signal_AMUX,
		ALU 			=> Signal_ALU,
		MBR 			=> Signal_MBR,
		MAR 			=> Signal_MAR,
		RD 			=> Signal_RD,
		WR 			=> Signal_WR,
		ENC 			=> Signal_ENC,
		C 				=> Signal_C,
		B 				=> Signal_B,
		A 				=> Signal_A,
		SH 			=> Signal_SH,
		MEM_TO_MBR 	=> Signal_MEM_TO_MBR,
		DATA_OK 		=> Signal_DATA_OK,
 
		MBR_TO_MEM 	=> Signal_MBR_TO_MEM,
		MAR_OUTPUT	=> Signal_MAR_Output,
		RD_OUTPUT 	=> Signal_RD_Output,
		WR_OUTPUT 	=> Signal_WR_Output,
		Z 				=> Signal_Z,
		N 				=> Signal_N);
END Type_3;
