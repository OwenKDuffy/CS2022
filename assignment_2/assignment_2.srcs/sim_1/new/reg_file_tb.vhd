----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2018 21:36:42
-- Design Name: 
-- Module Name: reg_file_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_file_tb is
--  Port ( );
end reg_file_tb;

architecture Behavioral of reg_file_tb is

 component reg_file 
            Port ( src : in STD_LOGIC_VECTOR(2 downto 0);
                   dst : in STD_LOGIC_VECTOR(2 downto 0); 
--                   selectA : in STD_LOGIC_VECTOR(2 downto 0);
--                   selectB : in STD_LOGIC_VECTOR(2 downto 0);
                   clock : in STD_LOGIC;
                   dataSrc : in STD_LOGIC;
                   data : in STD_LOGIC_VECTOR(15 downto 0);
--                   Adata : out STD_LOGIC_VECTOR(15 downto 0);
--                   Bdata : out STD_LOGIC_VECTOR(15 downto 0)
--                   ;
                   reg_out_0 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_1 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_2 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_3 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_4 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_5 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_6 : out STD_LOGIC_VECTOR(15 downto 0);
                   reg_out_7 : out STD_LOGIC_VECTOR(15 downto 0)
                   );
        end component;

        signal src:   STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
        signal dst, selectA, selectB:   STD_LOGIC_VECTOR(2 downto 0) ;
        signal dataSrc: STD_LOGIC;
        signal data: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
--        signal Adata, Bdata : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
        signal Clock: STD_LOGIC ;
        signal rm0: STD_LOGIC_VECTOR(15 downto 0);
                signal rm1: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
                signal rm2: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
                signal rm3: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
                signal rm4: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
                signal rm5: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
                signal rm6: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
                signal rm7: STD_LOGIC_VECTOR(15 downto 0):= (others => '0');
        -- Declare a clock period constant.
        Constant ClockPeriod : TIME := 10 ns;
        
begin        
        
        -- Clock Generation method 1:
        
        -- Clock Generation method 2:
      


    uut : reg_file port map (
    src, dst, Clock, dataSrc, data, rm0, rm1, rm2 , rm3, rm4, rm5, rm6, rm7
    );
    
GENERATE_CLOCK: process
          begin
--          wait for (ClockPeriod / 2)
--          Clock <= '1';
--          wait for (ClockPeriod / 2)
--          Clock <= '0';
    Clock <= not Clock after ClockPeriod / 2;
    end process;
          
    stim_proc: process
    begin
            data <= "0101011110100011";
            src <= "010";
            dst <= "010";
            dataSrc <= '0';
            wait for 100ns;
            
            dst <= "011";
            dataSrc <= '1';
            
            wait for 100ns;
    end process;
end Behavioral;
