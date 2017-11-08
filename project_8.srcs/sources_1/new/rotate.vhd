----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nie13
-- 
-- Create Date: 11/03/2017 06:38:29 PM
-- Design Name: 
-- Module Name: rotate - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rotate is
  Port (clk: in std_logic;
        btnU, btnD, btnL, btnR, btnC: in std_logic;
        sw: in std_logic_vector (15 downto 0);
        led: out std_logic_vector (15 downto 0);
        an: out std_logic_vector(3 downto 0);
        dp: out std_logic;
        seg: out std_logic_vector(6 downto 0) );
end rotate;

architecture Behavioral of rotate is
signal rst: std_logic;
signal digit1: std_logic_vector(7 downto 0);
signal digit2: std_logic_vector(7 downto 0);
signal digit3: std_logic_vector(7 downto 0);
signal digit4: std_logic_vector(7 downto 0);
signal an_sig: std_logic_vector(3 downto 0) := "1110";
signal count: std_logic_vector (9 downto 0) := (others => '0');

signal result: std_logic_vector(31 downto 0) := (others => '0');
signal initial: std_logic_vector(31 downto 0) := (others => '0');
signal inup: std_logic := '0';
signal outup: std_logic := '0';

signal up: std_logic := '0';
signal down: std_logic := '0';
signal left: std_logic := '0';
signal right: std_logic := '0';

signal lastdown: std_logic := '0';
signal lastleft: std_logic := '0';
signal lastright: std_logic := '0';
signal lastup: std_logic := '0';

begin

an <= an_sig;
up <= btnU;
down <= btnD;
rst <= btnC;
left <= btnL;
right <= btnR;

DIGITMAP: process(initial, outup)
begin
    if(outup = '0') then
        case initial(3 downto 0) is
            when "0000" => digit1 <= "10000001"; -- 0 and the dot is off
            when "0001" => digit1 <= "11110011"; -- 1 and the dot is off
            when "0010" => digit1 <= "01001001"; -- 2 and the dot is off
            when "0011" => digit1 <= "01100001"; -- 3 and the dot is off
            
            when "0100" => digit1 <= "00110011"; -- 4 and the dot is off
            when "0101" => digit1 <= "00100101"; -- 5 and the dot is off
            when "0110" => digit1 <= "00000101"; -- 6 and the dot is off
            when "0111" => digit1 <= "11110001"; -- 7 and the dot is off
      
            when "1000" => digit1 <= "00000001"; -- 8 and the dot is off
            when "1001" => digit1 <= "00100001"; -- 9 and the dot is off
            when "1010" => digit1 <= "00010000"; -- A and the dot is on
            when "1011" => digit1 <= "00000000"; -- B and the dot is on
            
            when "1100" => digit1 <= "10001100"; -- C and the dot is on
            when "1101" => digit1 <= "10000000"; -- D and the dot is on
            when "1110" => digit1 <= "00001100"; -- E and the dot is on
            when "1111" => digit1 <= "00011100"; -- F and the dot is on
            when others => digit1 <= "11111111"; -- Dark
        end case;
        
        case initial(7 downto 4) is
            when "0000" => digit2 <= "10000001"; -- 0 and the dot is off
             when "0001" => digit2 <= "11110011"; -- 1 and the dot is off
             when "0010" => digit2 <= "01001001"; -- 2 and the dot is off
             when "0011" => digit2 <= "01100001"; -- 3 and the dot is off
             
             when "0100" => digit2 <= "00110011"; -- 4 and the dot is off
             when "0101" => digit2 <= "00100101"; -- 5 and the dot is off
             when "0110" => digit2 <= "00000101"; -- 6 and the dot is off
             when "0111" => digit2 <= "11110001"; -- 7 and the dot is off
       
             when "1000" => digit2 <= "00000001"; -- 8 and the dot is off
             when "1001" => digit2 <= "00100001"; -- 9 and the dot is off
             when "1010" => digit2 <= "00010000"; -- A and the dot is on
             when "1011" => digit2 <= "00000000"; -- B and the dot is on
             
             when "1100" => digit2 <= "10001100"; -- C and the dot is on
             when "1101" => digit2 <= "10000000"; -- D and the dot is on
             when "1110" => digit2 <= "00001100"; -- E and the dot is on
             when "1111" => digit2 <= "00011100"; -- F and the dot is on
             when others => digit2 <= "11111111"; -- Dark
        end case;
        
        case initial(11 downto 8) is
            when "0000" => digit3 <= "10000001"; -- 0 and the dot is off
            when "0001" => digit3 <= "11110011"; -- 1 and the dot is off
            when "0010" => digit3 <= "01001001"; -- 2 and the dot is off
            when "0011" => digit3 <= "01100001"; -- 3 and the dot is off
            
            when "0100" => digit3 <= "00110011"; -- 4 and the dot is off
            when "0101" => digit3 <= "00100101"; -- 5 and the dot is off
            when "0110" => digit3 <= "00000101"; -- 6 and the dot is off
            when "0111" => digit3 <= "11110001"; -- 7 and the dot is off
      
            when "1000" => digit3 <= "00000001"; -- 8 and the dot is off
            when "1001" => digit3 <= "00100001"; -- 9 and the dot is off
            when "1010" => digit3 <= "00010000"; -- A and the dot is on
            when "1011" => digit3 <= "00000000"; -- B and the dot is on
            
            when "1100" => digit3 <= "10001100"; -- C and the dot is on
            when "1101" => digit3 <= "10000000"; -- D and the dot is on
            when "1110" => digit3 <= "00001100"; -- E and the dot is on
            when "1111" => digit3 <= "00011100"; -- F and the dot is on
            when others => digit3 <= "11111111"; -- Dark
        end case;
        
        case initial (15 downto 12) is
            when "0000" => digit4 <= "10000001"; -- 0 and the dot is off
            when "0001" => digit4 <= "11110011"; -- 1 and the dot is off
            when "0010" => digit4 <= "01001001"; -- 2 and the dot is off
            when "0011" => digit4 <= "01100001"; -- 3 and the dot is off
            
            when "0100" => digit4 <= "00110011"; -- 4 and the dot is off
            when "0101" => digit4 <= "00100101"; -- 5 and the dot is off
            when "0110" => digit4 <= "00000101"; -- 6 and the dot is off
            when "0111" => digit4 <= "11110001"; -- 7 and the dot is off
      
            when "1000" => digit4 <= "00000001"; -- 8 and the dot is off
            when "1001" => digit4 <= "00100001"; -- 9 and the dot is off
            when "1010" => digit4 <= "00010000"; -- A and the dot is on
            when "1011" => digit4 <= "00000000"; -- B and the dot is on
            
            when "1100" => digit4 <= "10001100"; -- C and the dot is on
            when "1101" => digit4 <= "10000000"; -- D and the dot is on
            when "1110" => digit4 <= "00001100"; -- E and the dot is on
            when "1111" => digit4 <= "00011100"; -- F and the dot is on
            when others => digit4 <= "11111111"; -- Dark
        end case;      
    elsif (outup = '1') then
        case initial(19 downto 16) is
            when "0000" => digit1 <= "10000001"; -- 0 and the dot is off
            when "0001" => digit1 <= "11110011"; -- 1 and the dot is off
            when "0010" => digit1 <= "01001001"; -- 2 and the dot is off
            when "0011" => digit1 <= "01100001"; -- 3 and the dot is off
            
            when "0100" => digit1 <= "00110011"; -- 4 and the dot is off
            when "0101" => digit1 <= "00100101"; -- 5 and the dot is off
            when "0110" => digit1 <= "00000101"; -- 6 and the dot is off
            when "0111" => digit1 <= "11110001"; -- 7 and the dot is off
      
            when "1000" => digit1 <= "00000001"; -- 8 and the dot is off
            when "1001" => digit1 <= "00100001"; -- 9 and the dot is off
            when "1010" => digit1 <= "00010000"; -- A and the dot is on
            when "1011" => digit1 <= "00000000"; -- B and the dot is on
            
            when "1100" => digit1 <= "10001100"; -- C and the dot is on
            when "1101" => digit1 <= "10000000"; -- D and the dot is on
            when "1110" => digit1 <= "00001100"; -- E and the dot is on
            when "1111" => digit1 <= "00011100"; -- F and the dot is on
            when others => digit1 <= "11111111"; -- Dark
        end case;
        
        case initial(23 downto 20) is
            when "0000" => digit2 <= "10000001"; -- 0 and the dot is off
             when "0001" => digit2 <= "11110011"; -- 1 and the dot is off
             when "0010" => digit2 <= "01001001"; -- 2 and the dot is off
             when "0011" => digit2 <= "01100001"; -- 3 and the dot is off
             
             when "0100" => digit2 <= "00110011"; -- 4 and the dot is off
             when "0101" => digit2 <= "00100101"; -- 5 and the dot is off
             when "0110" => digit2 <= "00000101"; -- 6 and the dot is off
             when "0111" => digit2 <= "11110001"; -- 7 and the dot is off
       
             when "1000" => digit2 <= "00000001"; -- 8 and the dot is off
             when "1001" => digit2 <= "00100001"; -- 9 and the dot is off
             when "1010" => digit2 <= "00010000"; -- A and the dot is on
             when "1011" => digit2 <= "00000000"; -- B and the dot is on
             
             when "1100" => digit2 <= "10001100"; -- C and the dot is on
             when "1101" => digit2 <= "10000000"; -- D and the dot is on
             when "1110" => digit2 <= "00001100"; -- E and the dot is on
             when "1111" => digit2 <= "00011100"; -- F and the dot is on
             when others => digit2 <= "11111111"; -- Dark
        end case;
        
        case initial(27 downto 24) is
            when "0000" => digit3 <= "10000001"; -- 0 and the dot is off
            when "0001" => digit3 <= "11110011"; -- 1 and the dot is off
            when "0010" => digit3 <= "01001001"; -- 2 and the dot is off
            when "0011" => digit3 <= "01100001"; -- 3 and the dot is off
            
            when "0100" => digit3 <= "00110011"; -- 4 and the dot is off
            when "0101" => digit3 <= "00100101"; -- 5 and the dot is off
            when "0110" => digit3 <= "00000101"; -- 6 and the dot is off
            when "0111" => digit3 <= "11110001"; -- 7 and the dot is off
      
            when "1000" => digit3 <= "00000001"; -- 8 and the dot is off
            when "1001" => digit3 <= "00100001"; -- 9 and the dot is off
            when "1010" => digit3 <= "00010000"; -- A and the dot is on
            when "1011" => digit3 <= "00000000"; -- B and the dot is on
            
            when "1100" => digit3 <= "10001100"; -- C and the dot is on
            when "1101" => digit3 <= "10000000"; -- D and the dot is on
            when "1110" => digit3 <= "00001100"; -- E and the dot is on
            when "1111" => digit3 <= "00011100"; -- F and the dot is on
            when others => digit3 <= "11111111"; -- Dark
        end case;
        
        case initial (31 downto 28) is
            when "0000" => digit4 <= "10000001"; -- 0 and the dot is off
            when "0001" => digit4 <= "11110011"; -- 1 and the dot is off
            when "0010" => digit4 <= "01001001"; -- 2 and the dot is off
            when "0011" => digit4 <= "01100001"; -- 3 and the dot is off
            
            when "0100" => digit4 <= "00110011"; -- 4 and the dot is off
            when "0101" => digit4 <= "00100101"; -- 5 and the dot is off
            when "0110" => digit4 <= "00000101"; -- 6 and the dot is off
            when "0111" => digit4 <= "11110001"; -- 7 and the dot is off
      
            when "1000" => digit4 <= "00000001"; -- 8 and the dot is off
            when "1001" => digit4 <= "00100001"; -- 9 and the dot is off
            when "1010" => digit4 <= "00010000"; -- A and the dot is on
            when "1011" => digit4 <= "00000000"; -- B and the dot is on
            
            when "1100" => digit4 <= "10001100"; -- C and the dot is on
            when "1101" => digit4 <= "10000000"; -- D and the dot is on
            when "1110" => digit4 <= "00001100"; -- E and the dot is on
            when "1111" => digit4 <= "00011100"; -- F and the dot is on
            when others => digit4 <= "11111111"; -- Dark
        end case;          
    end if;
end process;

ACTIVATE: process(clk, rst)
begin
    if (rst = '1') then
        an_sig <= "1110";
    elsif (clk'event and clk = '1') then
        if (count = 0) then
            an_sig <= an_sig( 2 downto 0) & an_sig(3);
        end if;    
    end if;
end process;

DISPLAYTIMER: process (clk, rst)
begin
    if (rst = '1') then
        count <= (others => '0');
    elsif (clk'event and clk = '1') then
        count <= count + '1';
    end if;
end process;

PICKDIGIT: process(clk, rst)
begin
    if(rst = '1') then
        seg <= (others => '1');
    elsif (clk' event and clk = '1') then
        case an_sig (3 downto 0) is
            when "1110"=> seg <= digit1(7 downto 1); dp <= digit1(0);
            when "1101"=> seg <= digit2(7 downto 1); dp <= digit2(0);
            when "1011"=> seg <= digit3(7 downto 1); dp <= digit3(0);
            when "0111"=> seg <= digit4(7 downto 1); dp <= digit4(0);
            when others => seg <="1111111"; dp <= '1'; 
        end case;
    end if;
end process;

TYPEIN: process(rst, clk)
begin
    if (rst = '1') then
        initial <= (others => '0');
    elsif (clk'event and clk = '1') then
        if (lastdown = '0' and down = '1') then
            if (inup = '0') then
                initial (15 downto 0) <= sw (15 downto 0);
                result (15 downto 0) <= sw (15 downto 0);
                inup <= '1';
            elsif (inup = '1') then
                initial (31 downto 16) <= sw (15 downto 0);
                result (31 downto 16) <= sw (15 downto 0);
                inup <= '0';
            end if;
        end if;
        
        if (lastleft = '0' and left = '1') then
            result(31 downto 0) <= result(30 downto 0) & result(31); 
        end if;
                      
        if(lastright = '0' and right = '1') then
            result <= result(0) & result(31 downto 1);
        end if;        
        
        if (lastup = '0' and up = '1') then
            if (outup = '0') then
                outup <= '1';
            elsif (outup = '1') then
                outup <= '0';
            end if;        
        end if;
        
        lastup <= up;
        lastdown <= down;
        lastleft <= left;
        lastright <= right;        
    end if;
end process;

--CALCLRT: process(left)
--begin
--    if (left'event and left = '1') then
--        result(31 downto 0) <= result(30 downto 0) & result(31);
--    end if;
--end process;

--CALCRRT: process(right)
--begin
--    if(right'event and right = '1') then
--        result <= result(0) & result(31 downto 1);
--    end if;
--end process;

--CHANGEOUT: process(up)
--begin
--    if (lastup = '0' and up = '1') then
--        if (outup = '0') then
--            outup <= '1';
--        elsif (outup = '1') then
--            outup <= '0';
--        end if;        
--    end if;
--    lastup <= up;
--end process;

SHOWRESULT: process(result, outup)
begin
    if (outup = '0') then
        led <= result (15 downto 0);
    elsif (outup = '1') then
        led <= result (31 downto 16);
    end if;
end process;

--CONTROLLER: process(btnC, btnL, btnR, btnU, btnD)
--begin
--    if (btnC = '1') then
--        rst <= '1';
--        up <= '0';
--        down <= '0';
--        left <= '0';
--        right <= '0';
--    else
--        rst <= '0';
--        if (btnU = '1') then
--            up <= '1';
--            down <= '0';
--            left <= '0';
--            right <= '0';
--        else
--            up <= '0';
--            if (btnD = '1') then
--                down <= '1';
--                left <= '0';
--                right <= '0';
--            else
--                down <= '0';
--                if (btnL = '1') then
--                    left <= '1';
--                    right <= '0';
--                else
--                    left <= '0';
--                    if (btnR <= '1') then
--                        right <= '1';
--                    else
--                        right <= '0';
--                    end if;
--                end if;
--            end if;
--        end if;
--    end if;

--end process;

end Behavioral;
