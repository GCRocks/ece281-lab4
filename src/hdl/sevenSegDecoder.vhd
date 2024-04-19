----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2024 11:37:12 PM
-- Design Name: 
-- Module Name: sevenSegDecoder_inst - Behavioral
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

entity sevenSegDecoder is
      port(
         i_D : in std_logic_vector (4 downto 0);
         o_S : out std_logic_vector (6 downto 0)
      ); 
end sevenSegDecoder;

architecture Behavioral of sevenSegDecoder is 

    signal c_Sa : std_logic := '1';
    signal c_Sb : std_logic := '1';
    signal c_Sc : std_logic := '1';
    signal c_Sd : std_logic := '1';
    signal c_Se : std_logic := '1';
    signal c_Sf : std_logic := '1';
    signal c_Sg : std_logic := '1';
    
begin
	
    c_Sa <= '1' when (  (i_D = x"1") or
                        (i_D = x"4"))
                        else '0';
                        
    c_Sb <= '1' when (  (i_D = x"5") or
                        (i_D = x"6"))
                        else '0';
                        
    c_Sc <= '1' when    (i_D = x"2")
                        else '0';
                    
    c_Sd <= '1' when (  (i_D = x"1") or
                        (i_D = x"4") or
                        (i_D = x"7"))
                        else '0';
                        
    c_Se <= '1' when (  (i_D = x"1") or
                        (i_D = x"3") or
                        (i_D = x"4") or
                        (i_D = x"5") or
                        (i_D = x"7") or
                        (i_D = x"9"))
                        else '0';
                
    c_Sf <= '1' when (  (i_D = x"1") or
                        (i_D = x"2") or
                        (i_D = x"3") or
                        (i_D = x"7"))
                        else '0';
                        
    c_Sg <= '1' when (  (i_D = x"0") or
                        (i_D = x"1") or
                        (i_D = x"7"))
                        else '0';
                
    o_S(0) <= c_Sa;
    o_S(1) <= c_Sb;
    o_S(2) <= c_Sc;
    o_S(3) <= c_Sd;
    o_S(4) <= c_Se;
    o_S(5) <= c_Sf;
    o_S(6) <= c_Sg;

end Behavioral; 