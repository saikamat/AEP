----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2017 05:22:30 PM
-- Design Name: 
-- Module Name: FullAddrer_tb - Behavioral
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
entity Full_Adder_tb is     
end Full_Adder_tb;

architecture Behavioral of Full_Adder_tb is

   component FullAdder is -- component declaration
   port(
      a : in std_logic;
      b : in std_logic;
      C_in : in std_logic;
      S : out std_logic;
      C_out : out std_logic
   );
   end component;

   signal a: std_logic := '0'; -- signal declarations
   signal b: std_logic := '0';
   signal C_in: std_logic := '0';
   signal S: std_logic;
   signal C_out : std_logic;

begin

   uut : FullAdder -- component instantiation
   port map(
      a => a, -- signal mappings
      b => b,
      C_in => C_in,
      S => S,
      C_out => C_out);

process 
begin 
   wait for 100 ns;
   a <= '0'; b <= '0'; C_in <= '1'; -- example test vector
   wait for 100 ns;
   a <= '0'; b <= '1'; C_in <= '0';
   wait for 100 ns;
   a <= '0'; b <= '1'; C_in <= '1';
   wait for 100 ns;
   a <= '1'; b <= '0'; C_in <= '0';
   wait for 100 ns;   
   -- Other test vectors and waits here

end process;


end Behavioral;

