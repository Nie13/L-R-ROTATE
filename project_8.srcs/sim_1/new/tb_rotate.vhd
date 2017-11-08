----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/07/2017 11:25:39 PM
-- Design Name: 
-- Module Name: tb_rotate - Behavioral
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

entity tb_rotate is
--  Port ( );
end tb_rotate;

architecture Behavioral of tb_rotate is
signal clk: std_logic;
signal btnU, btnD, btnL, btnR, btnC: std_logic;
signal sw: std_logic_vector (15 downto 0);
signal led: std_logic_vector (15 downto 0);
signal an: std_logic_vector(3 downto 0);
signal dp: std_logic;
signal seg: std_logic_vector(6 downto 0);

component rotate
Port (clk: in std_logic;
        btnU, btnD, btnL, btnR, btnC: in std_logic;
        sw: in std_logic_vector (15 downto 0);
        led: out std_logic_vector (15 downto 0);
        an: out std_logic_vector(3 downto 0);
        dp: out std_logic;
        seg: out std_logic_vector(6 downto 0) );
end component;

begin

DUT: rotate port map (clk, btnU, btnD, btnL, btnR, btnC, sw, led, an, dp, seg);

CLOCK: process
begin
clk <= '1';
wait for 50ns;
clk <= '0';
wait for 50ns;
end process;

TEST: process
begin
sw <= "0000000000000001";
btnU <= '0';
btnD <= '0';
btnL <= '0';
btnR <= '0';
btnC <= '0';
wait for 160ns;
btnD <= '1';
wait for 150ns;
btnD <= '0';
sw <= "0000000000000000";
wait for 120ns;
btnD <= '1';
wait for 160ns;
btnD <= '0';
wait for 130ns;
btnL <= '1';
wait for 100ns;
btnL <= '0';
wait for 100ns;
btnL <= '1';
wait for 100ns;
btnL <= '0';
wait for 100ns;
btnL <= '1';
wait for 100ns;
btnL <= '0';
wait for 100ns;
btnU <= '1';
wait for 100ns;
btnU <= '0';
wait;
end process;

end Behavioral;
