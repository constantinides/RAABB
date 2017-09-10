--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_F400_uid9
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_F400_uid9 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_F400_uid9 is
signal TableOut :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
  with X select TableOut <= 
   "000000" when "000000",
   "000000" when "000001",
   "000000" when "000010",
   "000000" when "000011",
   "000000" when "000100",
   "000000" when "000101",
   "000000" when "000110",
   "000000" when "000111",
   "000000" when "001000",
   "000001" when "001001",
   "000010" when "001010",
   "000011" when "001011",
   "000100" when "001100",
   "000101" when "001101",
   "000110" when "001110",
   "000111" when "001111",
   "000000" when "010000",
   "000010" when "010001",
   "000100" when "010010",
   "000110" when "010011",
   "001000" when "010100",
   "001010" when "010101",
   "001100" when "010110",
   "001110" when "010111",
   "000000" when "011000",
   "000011" when "011001",
   "000110" when "011010",
   "001001" when "011011",
   "001100" when "011100",
   "001111" when "011101",
   "010010" when "011110",
   "010101" when "011111",
   "000000" when "100000",
   "000100" when "100001",
   "001000" when "100010",
   "001100" when "100011",
   "010000" when "100100",
   "010100" when "100101",
   "011000" when "100110",
   "011100" when "100111",
   "000000" when "101000",
   "000101" when "101001",
   "001010" when "101010",
   "001111" when "101011",
   "010100" when "101100",
   "011001" when "101101",
   "011110" when "101110",
   "100011" when "101111",
   "000000" when "110000",
   "000110" when "110001",
   "001100" when "110010",
   "010010" when "110011",
   "011000" when "110100",
   "011110" when "110101",
   "100100" when "110110",
   "101010" when "110111",
   "000000" when "111000",
   "000111" when "111001",
   "001110" when "111010",
   "010101" when "111011",
   "011100" when "111100",
   "100011" when "111101",
   "101010" when "111110",
   "110001" when "111111",
   "------" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--                              Compressor_14_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3 is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "001" when "01000", 
      "010" when "01001", 
      "010" when "01010", 
      "011" when "01011", 
      "010" when "01100", 
      "011" when "01101", 
      "011" when "01110", 
      "100" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "011" when "11000", 
      "100" when "11001", 
      "100" when "11010", 
      "101" when "11011", 
      "100" when "11100", 
      "101" when "11101", 
      "101" when "11110", 
      "110" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_23_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3 is
signal X :  std_logic_vector(4 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "00000", 
      "001" when "00001", 
      "001" when "00010", 
      "010" when "00011", 
      "001" when "00100", 
      "010" when "00101", 
      "010" when "00110", 
      "011" when "00111", 
      "010" when "01000", 
      "011" when "01001", 
      "011" when "01010", 
      "100" when "01011", 
      "011" when "01100", 
      "100" when "01101", 
      "100" when "01110", 
      "101" when "01111", 
      "010" when "10000", 
      "011" when "10001", 
      "011" when "10010", 
      "100" when "10011", 
      "011" when "10100", 
      "100" when "10101", 
      "100" when "10110", 
      "101" when "10111", 
      "100" when "11000", 
      "101" when "11001", 
      "101" when "11010", 
      "110" when "11011", 
      "101" when "11100", 
      "110" when "11101", 
      "110" when "11110", 
      "111" when "11111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                              Compressor_13_3
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_13_3 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_13_3 is
signal X :  std_logic_vector(3 downto 0);
begin
   X <=X1 & X0 ;
   with X select R <= 
      "000" when "0000", 
      "001" when "0001", 
      "001" when "0010", 
      "010" when "0011", 
      "001" when "0100", 
      "010" when "0101", 
      "010" when "0110", 
      "011" when "0111", 
      "010" when "1000", 
      "011" when "1001", 
      "011" when "1010", 
      "100" when "1011", 
      "011" when "1100", 
      "100" when "1101", 
      "100" when "1110", 
      "101" when "1111", 
      "---" when others;

end architecture;

--------------------------------------------------------------------------------
--                               Compressor_3_2
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Popa, Illyes Kinga, 2012
--------------------------------------------------------------------------------
-- combinatorial

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2 is
   port ( X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2 is
signal X :  std_logic_vector(2 downto 0);
begin
   X <=X0 ;
   with X select R <= 
      "00" when "000", 
      "01" when "001", 
      "01" when "010", 
      "10" when "011", 
      "01" when "100", 
      "10" when "101", 
      "10" when "110", 
      "11" when "111", 
      "--" when others;

end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_42_f400_uid116
--                     (IntAdderClassical_42_F400_uid118)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_42_f400_uid116 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(41 downto 0);
          Y : in  std_logic_vector(41 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(41 downto 0)   );
end entity;

architecture arch of IntAdder_42_f400_uid116 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--             IntMultiplier_UsingDSP_21_21_42_unsigned_F400_uid4
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_21_21_42_unsigned_F400_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(20 downto 0);
          Y : in  std_logic_vector(20 downto 0);
          R : out  std_logic_vector(41 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_21_21_42_unsigned_F400_uid4 is
   component IntAdder_42_f400_uid116 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(41 downto 0);
             Y : in  std_logic_vector(41 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(41 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_F400_uid9 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_14_3 is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_23_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_13_3 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(20 downto 0);
signal YY_m5 :  std_logic_vector(20 downto 0);
signal Xp_m5b7 :  std_logic_vector(20 downto 0);
signal Yp_m5b7 :  std_logic_vector(5 downto 0);
signal x_m5b7_0 :  std_logic_vector(2 downto 0);
signal x_m5b7_1 :  std_logic_vector(2 downto 0);
signal x_m5b7_2 :  std_logic_vector(2 downto 0);
signal x_m5b7_3 :  std_logic_vector(2 downto 0);
signal x_m5b7_4 :  std_logic_vector(2 downto 0);
signal x_m5b7_5 :  std_logic_vector(2 downto 0);
signal x_m5b7_6 :  std_logic_vector(2 downto 0);
signal y_m5b7_0 :  std_logic_vector(2 downto 0);
signal y_m5b7_1 :  std_logic_vector(2 downto 0);
signal Y0X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal Y0X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w3_1 :  std_logic;
signal heap_bh6_w4_0, heap_bh6_w4_0_d1 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal Y0X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w6_1 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w8_0 :  std_logic;
signal heap_bh6_w9_0 :  std_logic;
signal Y0X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w9_1 :  std_logic;
signal heap_bh6_w10_0 :  std_logic;
signal heap_bh6_w11_0 :  std_logic;
signal heap_bh6_w12_0 :  std_logic;
signal Y0X4_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X4Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_1 :  std_logic;
signal heap_bh6_w13_0 :  std_logic;
signal heap_bh6_w14_0 :  std_logic;
signal heap_bh6_w15_0 :  std_logic;
signal Y0X5_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X5Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_1 :  std_logic;
signal heap_bh6_w16_0 :  std_logic;
signal heap_bh6_w17_0 :  std_logic;
signal heap_bh6_w18_0 :  std_logic;
signal Y0X6_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X6Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_1 :  std_logic;
signal heap_bh6_w19_0 :  std_logic;
signal heap_bh6_w20_0 :  std_logic;
signal heap_bh6_w21_0, heap_bh6_w21_0_d1 :  std_logic;
signal Y1X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w1_1 :  std_logic;
signal heap_bh6_w2_1 :  std_logic;
signal heap_bh6_w3_2 :  std_logic;
signal heap_bh6_w4_1 :  std_logic;
signal heap_bh6_w5_1 :  std_logic;
signal heap_bh6_w6_2 :  std_logic;
signal Y1X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w4_2 :  std_logic;
signal heap_bh6_w5_2 :  std_logic;
signal heap_bh6_w6_3 :  std_logic;
signal heap_bh6_w7_1 :  std_logic;
signal heap_bh6_w8_1 :  std_logic;
signal heap_bh6_w9_2 :  std_logic;
signal Y1X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w7_2 :  std_logic;
signal heap_bh6_w8_2 :  std_logic;
signal heap_bh6_w9_3 :  std_logic;
signal heap_bh6_w10_1 :  std_logic;
signal heap_bh6_w11_1 :  std_logic;
signal heap_bh6_w12_2 :  std_logic;
signal Y1X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w10_2 :  std_logic;
signal heap_bh6_w11_2 :  std_logic;
signal heap_bh6_w12_3 :  std_logic;
signal heap_bh6_w13_1 :  std_logic;
signal heap_bh6_w14_1 :  std_logic;
signal heap_bh6_w15_2 :  std_logic;
signal Y1X4_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X4Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w13_2 :  std_logic;
signal heap_bh6_w14_2 :  std_logic;
signal heap_bh6_w15_3 :  std_logic;
signal heap_bh6_w16_1 :  std_logic;
signal heap_bh6_w17_1 :  std_logic;
signal heap_bh6_w18_2 :  std_logic;
signal Y1X5_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X5Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w16_2 :  std_logic;
signal heap_bh6_w17_2 :  std_logic;
signal heap_bh6_w18_3 :  std_logic;
signal heap_bh6_w19_1 :  std_logic;
signal heap_bh6_w20_1 :  std_logic;
signal heap_bh6_w21_1 :  std_logic;
signal Y1X6_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X6Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w19_2 :  std_logic;
signal heap_bh6_w20_2 :  std_logic;
signal heap_bh6_w21_2 :  std_logic;
signal heap_bh6_w22_0, heap_bh6_w22_0_d1 :  std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 :  std_logic;
signal heap_bh6_w24_0, heap_bh6_w24_0_d1 :  std_logic;
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w41_0, heap_bh6_w41_0_d1, heap_bh6_w41_0_d2 :  std_logic;
signal heap_bh6_w40_0, heap_bh6_w40_0_d1, heap_bh6_w40_0_d2 :  std_logic;
signal heap_bh6_w39_0, heap_bh6_w39_0_d1, heap_bh6_w39_0_d2 :  std_logic;
signal heap_bh6_w38_0, heap_bh6_w38_0_d1, heap_bh6_w38_0_d2 :  std_logic;
signal heap_bh6_w37_0, heap_bh6_w37_0_d1, heap_bh6_w37_0_d2 :  std_logic;
signal heap_bh6_w36_0, heap_bh6_w36_0_d1, heap_bh6_w36_0_d2 :  std_logic;
signal heap_bh6_w35_0, heap_bh6_w35_0_d1, heap_bh6_w35_0_d2 :  std_logic;
signal heap_bh6_w34_0, heap_bh6_w34_0_d1, heap_bh6_w34_0_d2 :  std_logic;
signal heap_bh6_w33_0, heap_bh6_w33_0_d1, heap_bh6_w33_0_d2 :  std_logic;
signal heap_bh6_w32_0, heap_bh6_w32_0_d1, heap_bh6_w32_0_d2 :  std_logic;
signal heap_bh6_w31_0, heap_bh6_w31_0_d1, heap_bh6_w31_0_d2 :  std_logic;
signal heap_bh6_w30_0, heap_bh6_w30_0_d1, heap_bh6_w30_0_d2 :  std_logic;
signal heap_bh6_w29_0, heap_bh6_w29_0_d1, heap_bh6_w29_0_d2 :  std_logic;
signal heap_bh6_w28_0, heap_bh6_w28_0_d1, heap_bh6_w28_0_d2 :  std_logic;
signal heap_bh6_w27_0, heap_bh6_w27_0_d1, heap_bh6_w27_0_d2 :  std_logic;
signal heap_bh6_w26_0, heap_bh6_w26_0_d1, heap_bh6_w26_0_d2 :  std_logic;
signal heap_bh6_w25_0, heap_bh6_w25_0_d1, heap_bh6_w25_0_d2 :  std_logic;
signal heap_bh6_w24_1, heap_bh6_w24_1_d1 :  std_logic;
signal heap_bh6_w23_1, heap_bh6_w23_1_d1 :  std_logic;
signal heap_bh6_w22_1, heap_bh6_w22_1_d1 :  std_logic;
signal heap_bh6_w21_3, heap_bh6_w21_3_d1 :  std_logic;
signal heap_bh6_w20_3, heap_bh6_w20_3_d1 :  std_logic;
signal heap_bh6_w19_3, heap_bh6_w19_3_d1 :  std_logic;
signal heap_bh6_w18_4, heap_bh6_w18_4_d1 :  std_logic;
signal heap_bh6_w17_3, heap_bh6_w17_3_d1 :  std_logic;
signal heap_bh6_w16_3, heap_bh6_w16_3_d1 :  std_logic;
signal heap_bh6_w15_4, heap_bh6_w15_4_d1 :  std_logic;
signal heap_bh6_w14_3, heap_bh6_w14_3_d1 :  std_logic;
signal heap_bh6_w13_3, heap_bh6_w13_3_d1 :  std_logic;
signal heap_bh6_w12_4, heap_bh6_w12_4_d1 :  std_logic;
signal heap_bh6_w11_3, heap_bh6_w11_3_d1 :  std_logic;
signal heap_bh6_w10_3, heap_bh6_w10_3_d1 :  std_logic;
signal heap_bh6_w9_4, heap_bh6_w9_4_d1 :  std_logic;
signal heap_bh6_w8_3, heap_bh6_w8_3_d1 :  std_logic;
signal heap_bh6_w7_3, heap_bh6_w7_3_d1 :  std_logic;
signal heap_bh6_w6_4, heap_bh6_w6_4_d1, heap_bh6_w6_4_d2 :  std_logic;
signal heap_bh6_w5_3, heap_bh6_w5_3_d1 :  std_logic;
signal heap_bh6_w4_3, heap_bh6_w4_3_d1, heap_bh6_w4_3_d2 :  std_logic;
signal heap_bh6_w3_3, heap_bh6_w3_3_d1 :  std_logic;
signal heap_bh6_w2_2, heap_bh6_w2_2_d1, heap_bh6_w2_2_d2 :  std_logic;
signal heap_bh6_w1_2, heap_bh6_w1_2_d1, heap_bh6_w1_2_d2 :  std_logic;
signal tempR_bh6_0, tempR_bh6_0_d1, tempR_bh6_0_d2 :  std_logic;
signal inAdder0_bh6_0, inAdder0_bh6_0_d1 :  std_logic_vector(2 downto 0);
signal inAdder1_bh6_0, inAdder1_bh6_0_d1 :  std_logic_vector(2 downto 0);
signal cin_bh6_0, cin_bh6_0_d1 :  std_logic_vector(0 downto 0);
signal outAdder_bh6_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w1_3, heap_bh6_w1_3_d1 :  std_logic;
signal heap_bh6_w2_3, heap_bh6_w2_3_d1 :  std_logic;
signal heap_bh6_w3_4 :  std_logic;
signal CompressorIn_bh6_0_0 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_0_1 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_5, heap_bh6_w6_5_d1 :  std_logic;
signal heap_bh6_w7_4 :  std_logic;
signal heap_bh6_w8_4 :  std_logic;
signal CompressorIn_bh6_1_2 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_1_3 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_5, heap_bh6_w9_5_d1 :  std_logic;
signal heap_bh6_w10_4 :  std_logic;
signal heap_bh6_w11_4 :  std_logic;
signal CompressorIn_bh6_2_4 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_2_5 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_5, heap_bh6_w12_5_d1 :  std_logic;
signal heap_bh6_w13_4 :  std_logic;
signal heap_bh6_w14_4 :  std_logic;
signal CompressorIn_bh6_3_6 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_3_7 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_5, heap_bh6_w15_5_d1 :  std_logic;
signal heap_bh6_w16_4 :  std_logic;
signal heap_bh6_w17_4 :  std_logic;
signal CompressorIn_bh6_4_8 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_4_9 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_5, heap_bh6_w18_5_d1 :  std_logic;
signal heap_bh6_w19_4 :  std_logic;
signal heap_bh6_w20_4 :  std_logic;
signal CompressorIn_bh6_5_10 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_5_11 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w3_5, heap_bh6_w3_5_d1 :  std_logic;
signal heap_bh6_w4_4, heap_bh6_w4_4_d1 :  std_logic;
signal heap_bh6_w5_4, heap_bh6_w5_4_d1 :  std_logic;
signal CompressorIn_bh6_6_12 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_6_13 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_5 :  std_logic;
signal heap_bh6_w21_4, heap_bh6_w21_4_d1 :  std_logic;
signal heap_bh6_w22_2, heap_bh6_w22_2_d1 :  std_logic;
signal CompressorIn_bh6_7_14 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(1 downto 0);
signal heap_bh6_w5_5, heap_bh6_w5_5_d1 :  std_logic;
signal heap_bh6_w6_6, heap_bh6_w6_6_d1 :  std_logic;
signal CompressorIn_bh6_8_15 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(1 downto 0);
signal heap_bh6_w8_5 :  std_logic;
signal heap_bh6_w9_6, heap_bh6_w9_6_d1 :  std_logic;
signal CompressorIn_bh6_9_16 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(1 downto 0);
signal heap_bh6_w11_5 :  std_logic;
signal heap_bh6_w12_6, heap_bh6_w12_6_d1 :  std_logic;
signal CompressorIn_bh6_10_17 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(1 downto 0);
signal heap_bh6_w14_5 :  std_logic;
signal heap_bh6_w15_6, heap_bh6_w15_6_d1 :  std_logic;
signal CompressorIn_bh6_11_18 :  std_logic_vector(2 downto 0);
signal CompressorOut_bh6_11_11 :  std_logic_vector(1 downto 0);
signal heap_bh6_w17_5 :  std_logic;
signal heap_bh6_w18_6, heap_bh6_w18_6_d1 :  std_logic;
signal CompressorIn_bh6_12_19 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_12_20 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_5, heap_bh6_w7_5_d1 :  std_logic;
signal heap_bh6_w8_6, heap_bh6_w8_6_d1 :  std_logic;
signal heap_bh6_w9_7, heap_bh6_w9_7_d1 :  std_logic;
signal CompressorIn_bh6_13_21 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_13_22 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_5, heap_bh6_w10_5_d1 :  std_logic;
signal heap_bh6_w11_6, heap_bh6_w11_6_d1 :  std_logic;
signal heap_bh6_w12_7, heap_bh6_w12_7_d1 :  std_logic;
signal CompressorIn_bh6_14_23 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_14_24 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_5, heap_bh6_w13_5_d1 :  std_logic;
signal heap_bh6_w14_6, heap_bh6_w14_6_d1 :  std_logic;
signal heap_bh6_w15_7, heap_bh6_w15_7_d1 :  std_logic;
signal CompressorIn_bh6_15_25 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_15_26 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_5, heap_bh6_w16_5_d1 :  std_logic;
signal heap_bh6_w17_6, heap_bh6_w17_6_d1 :  std_logic;
signal heap_bh6_w18_7, heap_bh6_w18_7_d1 :  std_logic;
signal CompressorIn_bh6_16_27 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_16_28 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_5, heap_bh6_w19_5_d1 :  std_logic;
signal heap_bh6_w20_6, heap_bh6_w20_6_d1 :  std_logic;
signal heap_bh6_w21_5, heap_bh6_w21_5_d1 :  std_logic;
signal CompressorIn_bh6_17_29 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_17_30 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_6 :  std_logic;
signal heap_bh6_w22_3 :  std_logic;
signal heap_bh6_w23_2 :  std_logic;
signal CompressorIn_bh6_18_31 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_18_32 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_8 :  std_logic;
signal heap_bh6_w10_6 :  std_logic;
signal heap_bh6_w11_7 :  std_logic;
signal CompressorIn_bh6_19_33 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_19_34 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_19_19 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_8 :  std_logic;
signal heap_bh6_w13_6 :  std_logic;
signal heap_bh6_w14_7 :  std_logic;
signal CompressorIn_bh6_20_35 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_20_36 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_20_20 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_8 :  std_logic;
signal heap_bh6_w16_6 :  std_logic;
signal heap_bh6_w17_7 :  std_logic;
signal CompressorIn_bh6_21_37 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_21_38 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_21_21 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_8 :  std_logic;
signal heap_bh6_w19_6 :  std_logic;
signal heap_bh6_w20_7 :  std_logic;
signal CompressorIn_bh6_22_39 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_22_40 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_22_22 :  std_logic_vector(2 downto 0);
signal heap_bh6_w3_6, heap_bh6_w3_6_d1 :  std_logic;
signal heap_bh6_w4_5, heap_bh6_w4_5_d1 :  std_logic;
signal heap_bh6_w5_6, heap_bh6_w5_6_d1 :  std_logic;
signal CompressorIn_bh6_23_41 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_23_42 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_7, heap_bh6_w5_7_d1 :  std_logic;
signal heap_bh6_w6_7, heap_bh6_w6_7_d1 :  std_logic;
signal heap_bh6_w7_6 :  std_logic;
signal CompressorIn_bh6_24_43 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_24_44 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_8, heap_bh6_w11_8_d1 :  std_logic;
signal heap_bh6_w12_9, heap_bh6_w12_9_d1 :  std_logic;
signal heap_bh6_w13_7 :  std_logic;
signal CompressorIn_bh6_25_45 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_25_46 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_8 :  std_logic;
signal heap_bh6_w15_9, heap_bh6_w15_9_d1 :  std_logic;
signal heap_bh6_w16_7 :  std_logic;
signal CompressorIn_bh6_26_47 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_26_48 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_8 :  std_logic;
signal heap_bh6_w18_9, heap_bh6_w18_9_d1 :  std_logic;
signal heap_bh6_w19_7 :  std_logic;
signal CompressorIn_bh6_27_49 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_27_50 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_8 :  std_logic;
signal heap_bh6_w21_7, heap_bh6_w21_7_d1 :  std_logic;
signal heap_bh6_w22_4 :  std_logic;
signal CompressorIn_bh6_28_51 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_28_52 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_28_28 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_3 :  std_logic;
signal heap_bh6_w24_2, heap_bh6_w24_2_d1 :  std_logic;
signal heap_bh6_w25_1, heap_bh6_w25_1_d1 :  std_logic;
signal CompressorIn_bh6_29_53 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_29_54 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_29_29 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_7, heap_bh6_w7_7_d1 :  std_logic;
signal heap_bh6_w8_7, heap_bh6_w8_7_d1 :  std_logic;
signal heap_bh6_w9_9 :  std_logic;
signal CompressorIn_bh6_30_55 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_30_56 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_30_30 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_8, heap_bh6_w13_8_d1 :  std_logic;
signal heap_bh6_w14_9, heap_bh6_w14_9_d1 :  std_logic;
signal heap_bh6_w15_10, heap_bh6_w15_10_d1 :  std_logic;
signal CompressorIn_bh6_31_57 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_31_58 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_31_31 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_8, heap_bh6_w16_8_d1 :  std_logic;
signal heap_bh6_w17_9, heap_bh6_w17_9_d1 :  std_logic;
signal heap_bh6_w18_10, heap_bh6_w18_10_d1 :  std_logic;
signal CompressorIn_bh6_32_59 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_32_60 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_32_32 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_8, heap_bh6_w19_8_d1 :  std_logic;
signal heap_bh6_w20_9, heap_bh6_w20_9_d1 :  std_logic;
signal heap_bh6_w21_8, heap_bh6_w21_8_d1 :  std_logic;
signal CompressorIn_bh6_33_61 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_33_62 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_33_33 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_5, heap_bh6_w22_5_d1 :  std_logic;
signal heap_bh6_w23_4, heap_bh6_w23_4_d1 :  std_logic;
signal heap_bh6_w24_3, heap_bh6_w24_3_d1 :  std_logic;
signal CompressorIn_bh6_34_63 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_34_64 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_34_34 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_10, heap_bh6_w9_10_d1 :  std_logic;
signal heap_bh6_w10_7, heap_bh6_w10_7_d1 :  std_logic;
signal heap_bh6_w11_9, heap_bh6_w11_9_d1 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(41 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(41 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(41 downto 0);
signal CompressionResult6 :  std_logic_vector(42 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F400_uid9: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F400_uid9: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w4_0_d1 <=  heap_bh6_w4_0;
            heap_bh6_w21_0_d1 <=  heap_bh6_w21_0;
            heap_bh6_w22_0_d1 <=  heap_bh6_w22_0;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w24_0_d1 <=  heap_bh6_w24_0;
            heap_bh6_w41_0_d1 <=  heap_bh6_w41_0;
            heap_bh6_w41_0_d2 <=  heap_bh6_w41_0_d1;
            heap_bh6_w40_0_d1 <=  heap_bh6_w40_0;
            heap_bh6_w40_0_d2 <=  heap_bh6_w40_0_d1;
            heap_bh6_w39_0_d1 <=  heap_bh6_w39_0;
            heap_bh6_w39_0_d2 <=  heap_bh6_w39_0_d1;
            heap_bh6_w38_0_d1 <=  heap_bh6_w38_0;
            heap_bh6_w38_0_d2 <=  heap_bh6_w38_0_d1;
            heap_bh6_w37_0_d1 <=  heap_bh6_w37_0;
            heap_bh6_w37_0_d2 <=  heap_bh6_w37_0_d1;
            heap_bh6_w36_0_d1 <=  heap_bh6_w36_0;
            heap_bh6_w36_0_d2 <=  heap_bh6_w36_0_d1;
            heap_bh6_w35_0_d1 <=  heap_bh6_w35_0;
            heap_bh6_w35_0_d2 <=  heap_bh6_w35_0_d1;
            heap_bh6_w34_0_d1 <=  heap_bh6_w34_0;
            heap_bh6_w34_0_d2 <=  heap_bh6_w34_0_d1;
            heap_bh6_w33_0_d1 <=  heap_bh6_w33_0;
            heap_bh6_w33_0_d2 <=  heap_bh6_w33_0_d1;
            heap_bh6_w32_0_d1 <=  heap_bh6_w32_0;
            heap_bh6_w32_0_d2 <=  heap_bh6_w32_0_d1;
            heap_bh6_w31_0_d1 <=  heap_bh6_w31_0;
            heap_bh6_w31_0_d2 <=  heap_bh6_w31_0_d1;
            heap_bh6_w30_0_d1 <=  heap_bh6_w30_0;
            heap_bh6_w30_0_d2 <=  heap_bh6_w30_0_d1;
            heap_bh6_w29_0_d1 <=  heap_bh6_w29_0;
            heap_bh6_w29_0_d2 <=  heap_bh6_w29_0_d1;
            heap_bh6_w28_0_d1 <=  heap_bh6_w28_0;
            heap_bh6_w28_0_d2 <=  heap_bh6_w28_0_d1;
            heap_bh6_w27_0_d1 <=  heap_bh6_w27_0;
            heap_bh6_w27_0_d2 <=  heap_bh6_w27_0_d1;
            heap_bh6_w26_0_d1 <=  heap_bh6_w26_0;
            heap_bh6_w26_0_d2 <=  heap_bh6_w26_0_d1;
            heap_bh6_w25_0_d1 <=  heap_bh6_w25_0;
            heap_bh6_w25_0_d2 <=  heap_bh6_w25_0_d1;
            heap_bh6_w24_1_d1 <=  heap_bh6_w24_1;
            heap_bh6_w23_1_d1 <=  heap_bh6_w23_1;
            heap_bh6_w22_1_d1 <=  heap_bh6_w22_1;
            heap_bh6_w21_3_d1 <=  heap_bh6_w21_3;
            heap_bh6_w20_3_d1 <=  heap_bh6_w20_3;
            heap_bh6_w19_3_d1 <=  heap_bh6_w19_3;
            heap_bh6_w18_4_d1 <=  heap_bh6_w18_4;
            heap_bh6_w17_3_d1 <=  heap_bh6_w17_3;
            heap_bh6_w16_3_d1 <=  heap_bh6_w16_3;
            heap_bh6_w15_4_d1 <=  heap_bh6_w15_4;
            heap_bh6_w14_3_d1 <=  heap_bh6_w14_3;
            heap_bh6_w13_3_d1 <=  heap_bh6_w13_3;
            heap_bh6_w12_4_d1 <=  heap_bh6_w12_4;
            heap_bh6_w11_3_d1 <=  heap_bh6_w11_3;
            heap_bh6_w10_3_d1 <=  heap_bh6_w10_3;
            heap_bh6_w9_4_d1 <=  heap_bh6_w9_4;
            heap_bh6_w8_3_d1 <=  heap_bh6_w8_3;
            heap_bh6_w7_3_d1 <=  heap_bh6_w7_3;
            heap_bh6_w6_4_d1 <=  heap_bh6_w6_4;
            heap_bh6_w6_4_d2 <=  heap_bh6_w6_4_d1;
            heap_bh6_w5_3_d1 <=  heap_bh6_w5_3;
            heap_bh6_w4_3_d1 <=  heap_bh6_w4_3;
            heap_bh6_w4_3_d2 <=  heap_bh6_w4_3_d1;
            heap_bh6_w3_3_d1 <=  heap_bh6_w3_3;
            heap_bh6_w2_2_d1 <=  heap_bh6_w2_2;
            heap_bh6_w2_2_d2 <=  heap_bh6_w2_2_d1;
            heap_bh6_w1_2_d1 <=  heap_bh6_w1_2;
            heap_bh6_w1_2_d2 <=  heap_bh6_w1_2_d1;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
            tempR_bh6_0_d2 <=  tempR_bh6_0_d1;
            inAdder0_bh6_0_d1 <=  inAdder0_bh6_0;
            inAdder1_bh6_0_d1 <=  inAdder1_bh6_0;
            cin_bh6_0_d1 <=  cin_bh6_0;
            heap_bh6_w1_3_d1 <=  heap_bh6_w1_3;
            heap_bh6_w2_3_d1 <=  heap_bh6_w2_3;
            heap_bh6_w6_5_d1 <=  heap_bh6_w6_5;
            heap_bh6_w9_5_d1 <=  heap_bh6_w9_5;
            heap_bh6_w12_5_d1 <=  heap_bh6_w12_5;
            heap_bh6_w15_5_d1 <=  heap_bh6_w15_5;
            heap_bh6_w18_5_d1 <=  heap_bh6_w18_5;
            heap_bh6_w3_5_d1 <=  heap_bh6_w3_5;
            heap_bh6_w4_4_d1 <=  heap_bh6_w4_4;
            heap_bh6_w5_4_d1 <=  heap_bh6_w5_4;
            heap_bh6_w21_4_d1 <=  heap_bh6_w21_4;
            heap_bh6_w22_2_d1 <=  heap_bh6_w22_2;
            heap_bh6_w5_5_d1 <=  heap_bh6_w5_5;
            heap_bh6_w6_6_d1 <=  heap_bh6_w6_6;
            heap_bh6_w9_6_d1 <=  heap_bh6_w9_6;
            heap_bh6_w12_6_d1 <=  heap_bh6_w12_6;
            heap_bh6_w15_6_d1 <=  heap_bh6_w15_6;
            heap_bh6_w18_6_d1 <=  heap_bh6_w18_6;
            heap_bh6_w7_5_d1 <=  heap_bh6_w7_5;
            heap_bh6_w8_6_d1 <=  heap_bh6_w8_6;
            heap_bh6_w9_7_d1 <=  heap_bh6_w9_7;
            heap_bh6_w10_5_d1 <=  heap_bh6_w10_5;
            heap_bh6_w11_6_d1 <=  heap_bh6_w11_6;
            heap_bh6_w12_7_d1 <=  heap_bh6_w12_7;
            heap_bh6_w13_5_d1 <=  heap_bh6_w13_5;
            heap_bh6_w14_6_d1 <=  heap_bh6_w14_6;
            heap_bh6_w15_7_d1 <=  heap_bh6_w15_7;
            heap_bh6_w16_5_d1 <=  heap_bh6_w16_5;
            heap_bh6_w17_6_d1 <=  heap_bh6_w17_6;
            heap_bh6_w18_7_d1 <=  heap_bh6_w18_7;
            heap_bh6_w19_5_d1 <=  heap_bh6_w19_5;
            heap_bh6_w20_6_d1 <=  heap_bh6_w20_6;
            heap_bh6_w21_5_d1 <=  heap_bh6_w21_5;
            heap_bh6_w3_6_d1 <=  heap_bh6_w3_6;
            heap_bh6_w4_5_d1 <=  heap_bh6_w4_5;
            heap_bh6_w5_6_d1 <=  heap_bh6_w5_6;
            heap_bh6_w5_7_d1 <=  heap_bh6_w5_7;
            heap_bh6_w6_7_d1 <=  heap_bh6_w6_7;
            heap_bh6_w11_8_d1 <=  heap_bh6_w11_8;
            heap_bh6_w12_9_d1 <=  heap_bh6_w12_9;
            heap_bh6_w15_9_d1 <=  heap_bh6_w15_9;
            heap_bh6_w18_9_d1 <=  heap_bh6_w18_9;
            heap_bh6_w21_7_d1 <=  heap_bh6_w21_7;
            heap_bh6_w24_2_d1 <=  heap_bh6_w24_2;
            heap_bh6_w25_1_d1 <=  heap_bh6_w25_1;
            heap_bh6_w7_7_d1 <=  heap_bh6_w7_7;
            heap_bh6_w8_7_d1 <=  heap_bh6_w8_7;
            heap_bh6_w13_8_d1 <=  heap_bh6_w13_8;
            heap_bh6_w14_9_d1 <=  heap_bh6_w14_9;
            heap_bh6_w15_10_d1 <=  heap_bh6_w15_10;
            heap_bh6_w16_8_d1 <=  heap_bh6_w16_8;
            heap_bh6_w17_9_d1 <=  heap_bh6_w17_9;
            heap_bh6_w18_10_d1 <=  heap_bh6_w18_10;
            heap_bh6_w19_8_d1 <=  heap_bh6_w19_8;
            heap_bh6_w20_9_d1 <=  heap_bh6_w20_9;
            heap_bh6_w21_8_d1 <=  heap_bh6_w21_8;
            heap_bh6_w22_5_d1 <=  heap_bh6_w22_5;
            heap_bh6_w23_4_d1 <=  heap_bh6_w23_4;
            heap_bh6_w24_3_d1 <=  heap_bh6_w24_3;
            heap_bh6_w9_10_d1 <=  heap_bh6_w9_10;
            heap_bh6_w10_7_d1 <=  heap_bh6_w10_7;
            heap_bh6_w11_9_d1 <=  heap_bh6_w11_9;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=0 lsbY=0 msbX=21 msbY=4
   Xp_m5b7 <= XX_m5(20 downto 0) & "";
   Yp_m5b7 <= YY_m5(3 downto 0) & "00";
   x_m5b7_0 <= Xp_m5b7(2 downto 0);
   x_m5b7_1 <= Xp_m5b7(5 downto 3);
   x_m5b7_2 <= Xp_m5b7(8 downto 6);
   x_m5b7_3 <= Xp_m5b7(11 downto 9);
   x_m5b7_4 <= Xp_m5b7(14 downto 12);
   x_m5b7_5 <= Xp_m5b7(17 downto 15);
   x_m5b7_6 <= Xp_m5b7(20 downto 18);
   y_m5b7_0 <= Yp_m5b7(2 downto 0);
   y_m5b7_1 <= Yp_m5b7(5 downto 3);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_7_m5 <= y_m5b7_0 & x_m5b7_0;
   PP_m5_7X0Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_7_m5,
                 Y => PP7X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w0_0 <= PP7X0Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w1_0 <= PP7X0Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w2_0 <= PP7X0Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w3_0 <= PP7X0Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X1_7_m5 <= y_m5b7_0 & x_m5b7_1;
   PP_m5_7X1Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X1_7_m5,
                 Y => PP7X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w3_1 <= PP7X1Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w4_0 <= PP7X1Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w5_0 <= PP7X1Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w6_0 <= PP7X1Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X2_7_m5 <= y_m5b7_0 & x_m5b7_2;
   PP_m5_7X2Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X2_7_m5,
                 Y => PP7X2Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w6_1 <= PP7X2Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w7_0 <= PP7X2Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w8_0 <= PP7X2Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w9_0 <= PP7X2Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X3_7_m5 <= y_m5b7_0 & x_m5b7_3;
   PP_m5_7X3Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X3_7_m5,
                 Y => PP7X3Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w9_1 <= PP7X3Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w10_0 <= PP7X3Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w11_0 <= PP7X3Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w12_0 <= PP7X3Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X4_7_m5 <= y_m5b7_0 & x_m5b7_4;
   PP_m5_7X4Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X4_7_m5,
                 Y => PP7X4Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_1 <= PP7X4Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w13_0 <= PP7X4Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w14_0 <= PP7X4Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w15_0 <= PP7X4Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X5_7_m5 <= y_m5b7_0 & x_m5b7_5;
   PP_m5_7X5Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X5_7_m5,
                 Y => PP7X5Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_1 <= PP7X5Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w16_0 <= PP7X5Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w17_0 <= PP7X5Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w18_0 <= PP7X5Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X6_7_m5 <= y_m5b7_0 & x_m5b7_6;
   PP_m5_7X6Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X6_7_m5,
                 Y => PP7X6Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_1 <= PP7X6Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w19_0 <= PP7X6Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w20_0 <= PP7X6Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w21_0 <= PP7X6Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   -- Partial product row number 1
   Y1X0_7_m5 <= y_m5b7_1 & x_m5b7_0;
   PP_m5_7X0Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X0_7_m5,
                 Y => PP7X0Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w1_1 <= PP7X0Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w2_1 <= PP7X0Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w3_2 <= PP7X0Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w4_1 <= PP7X0Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w5_1 <= PP7X0Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w6_2 <= PP7X0Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y1X1_7_m5 <= y_m5b7_1 & x_m5b7_1;
   PP_m5_7X1Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X1_7_m5,
                 Y => PP7X1Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w4_2 <= PP7X1Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w5_2 <= PP7X1Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w6_3 <= PP7X1Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w7_1 <= PP7X1Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w8_1 <= PP7X1Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w9_2 <= PP7X1Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y1X2_7_m5 <= y_m5b7_1 & x_m5b7_2;
   PP_m5_7X2Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X2_7_m5,
                 Y => PP7X2Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w7_2 <= PP7X2Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w8_2 <= PP7X2Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w9_3 <= PP7X2Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w10_1 <= PP7X2Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w11_1 <= PP7X2Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w12_2 <= PP7X2Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y1X3_7_m5 <= y_m5b7_1 & x_m5b7_3;
   PP_m5_7X3Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X3_7_m5,
                 Y => PP7X3Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w10_2 <= PP7X3Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w11_2 <= PP7X3Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w12_3 <= PP7X3Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w13_1 <= PP7X3Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w14_1 <= PP7X3Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w15_2 <= PP7X3Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y1X4_7_m5 <= y_m5b7_1 & x_m5b7_4;
   PP_m5_7X4Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X4_7_m5,
                 Y => PP7X4Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w13_2 <= PP7X4Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w14_2 <= PP7X4Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w15_3 <= PP7X4Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w16_1 <= PP7X4Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w17_1 <= PP7X4Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w18_2 <= PP7X4Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y1X5_7_m5 <= y_m5b7_1 & x_m5b7_5;
   PP_m5_7X5Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X5_7_m5,
                 Y => PP7X5Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w16_2 <= PP7X5Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w17_2 <= PP7X5Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w18_3 <= PP7X5Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w19_1 <= PP7X5Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w20_1 <= PP7X5Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w21_1 <= PP7X5Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y1X6_7_m5 <= y_m5b7_1 & x_m5b7_6;
   PP_m5_7X6Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X6_7_m5,
                 Y => PP7X6Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w19_2 <= PP7X6Y1_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w20_2 <= PP7X6Y1_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w21_2 <= PP7X6Y1_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w22_0 <= PP7X6Y1_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w23_0 <= PP7X6Y1_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w24_0 <= PP7X6Y1_m5(5); -- cycle= 0 cp= 5.8304e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= std_logic_vector(unsigned("" & XX_m5(20 downto 0) & "000") * unsigned("" & YY_m5(20 downto 4) & ""));
   heap_bh6_w41_0 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_0 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_0 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_0 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_0 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_0 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_0 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_1 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_1 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_1 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_3 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_3 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_3 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_4 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_3 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_3 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_4 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_3 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_3 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_4 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_3 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_3 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_4 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_3 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_3 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_4 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_3 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_3 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_3 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_2 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_2 <= DSP_bh6_ch0_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w0_0; -- already compressed
   ----------------Synchro barrier, entering cycle 0----------------
   inAdder0_bh6_0 <= '0' & heap_bh6_w2_1 & heap_bh6_w1_1;
   inAdder1_bh6_0 <= '0' & heap_bh6_w2_0 & heap_bh6_w1_0;
   cin_bh6_0 <= "0";
   ----------------Synchro barrier, entering cycle 1----------------
   outAdder_bh6_0 <= std_logic_vector(unsigned(inAdder0_bh6_0_d1) + unsigned(inAdder1_bh6_0_d1) + unsigned(cin_bh6_0_d1));
   heap_bh6_w1_3 <= outAdder_bh6_0(0); -- cycle= 1 cp= 0
   heap_bh6_w2_3 <= outAdder_bh6_0(1); -- cycle= 1 cp= 0
   heap_bh6_w3_4 <= outAdder_bh6_0(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w6_3 & heap_bh6_w6_2 & heap_bh6_w6_1 & heap_bh6_w6_0;
   CompressorIn_bh6_0_1(0) <= heap_bh6_w7_2;
   Compressor_bh6_0: Compressor_14_3
      port map ( R => CompressorOut_bh6_0_0   ,
                 X0 => CompressorIn_bh6_0_0,
                 X1 => CompressorIn_bh6_0_1);
   heap_bh6_w6_5 <= CompressorOut_bh6_0_0(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w7_4 <= CompressorOut_bh6_0_0(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w8_4 <= CompressorOut_bh6_0_0(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_1_2 <= heap_bh6_w9_3 & heap_bh6_w9_2 & heap_bh6_w9_1 & heap_bh6_w9_0;
   CompressorIn_bh6_1_3(0) <= heap_bh6_w10_2;
   Compressor_bh6_1: Compressor_14_3
      port map ( R => CompressorOut_bh6_1_1   ,
                 X0 => CompressorIn_bh6_1_2,
                 X1 => CompressorIn_bh6_1_3);
   heap_bh6_w9_5 <= CompressorOut_bh6_1_1(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w10_4 <= CompressorOut_bh6_1_1(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w11_4 <= CompressorOut_bh6_1_1(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_2_4 <= heap_bh6_w12_3 & heap_bh6_w12_2 & heap_bh6_w12_1 & heap_bh6_w12_0;
   CompressorIn_bh6_2_5(0) <= heap_bh6_w13_2;
   Compressor_bh6_2: Compressor_14_3
      port map ( R => CompressorOut_bh6_2_2   ,
                 X0 => CompressorIn_bh6_2_4,
                 X1 => CompressorIn_bh6_2_5);
   heap_bh6_w12_5 <= CompressorOut_bh6_2_2(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w13_4 <= CompressorOut_bh6_2_2(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w14_4 <= CompressorOut_bh6_2_2(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_3_6 <= heap_bh6_w15_3 & heap_bh6_w15_2 & heap_bh6_w15_1 & heap_bh6_w15_0;
   CompressorIn_bh6_3_7(0) <= heap_bh6_w16_2;
   Compressor_bh6_3: Compressor_14_3
      port map ( R => CompressorOut_bh6_3_3   ,
                 X0 => CompressorIn_bh6_3_6,
                 X1 => CompressorIn_bh6_3_7);
   heap_bh6_w15_5 <= CompressorOut_bh6_3_3(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w16_4 <= CompressorOut_bh6_3_3(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w17_4 <= CompressorOut_bh6_3_3(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_4_8 <= heap_bh6_w18_3 & heap_bh6_w18_2 & heap_bh6_w18_1 & heap_bh6_w18_0;
   CompressorIn_bh6_4_9(0) <= heap_bh6_w19_2;
   Compressor_bh6_4: Compressor_14_3
      port map ( R => CompressorOut_bh6_4_4   ,
                 X0 => CompressorIn_bh6_4_8,
                 X1 => CompressorIn_bh6_4_9);
   heap_bh6_w18_5 <= CompressorOut_bh6_4_4(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w19_4 <= CompressorOut_bh6_4_4(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w20_4 <= CompressorOut_bh6_4_4(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_5_10 <= heap_bh6_w3_2 & heap_bh6_w3_1 & heap_bh6_w3_0;
   CompressorIn_bh6_5_11 <= heap_bh6_w4_2 & heap_bh6_w4_1;
   Compressor_bh6_5: Compressor_23_3
      port map ( R => CompressorOut_bh6_5_5   ,
                 X0 => CompressorIn_bh6_5_10,
                 X1 => CompressorIn_bh6_5_11);
   heap_bh6_w3_5 <= CompressorOut_bh6_5_5(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w4_4 <= CompressorOut_bh6_5_5(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w5_4 <= CompressorOut_bh6_5_5(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_6_12 <= heap_bh6_w20_2 & heap_bh6_w20_1 & heap_bh6_w20_0;
   CompressorIn_bh6_6_13 <= heap_bh6_w21_2 & heap_bh6_w21_1;
   Compressor_bh6_6: Compressor_23_3
      port map ( R => CompressorOut_bh6_6_6   ,
                 X0 => CompressorIn_bh6_6_12,
                 X1 => CompressorIn_bh6_6_13);
   heap_bh6_w20_5 <= CompressorOut_bh6_6_6(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w21_4 <= CompressorOut_bh6_6_6(1); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w22_2 <= CompressorOut_bh6_6_6(2); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_7_14 <= heap_bh6_w5_2 & heap_bh6_w5_1 & heap_bh6_w5_0;
   Compressor_bh6_7: Compressor_3_2
      port map ( R => CompressorOut_bh6_7_7   ,
                 X0 => CompressorIn_bh6_7_14);
   heap_bh6_w5_5 <= CompressorOut_bh6_7_7(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w6_6 <= CompressorOut_bh6_7_7(1); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_8_15 <= heap_bh6_w8_2 & heap_bh6_w8_1 & heap_bh6_w8_0;
   Compressor_bh6_8: Compressor_3_2
      port map ( R => CompressorOut_bh6_8_8   ,
                 X0 => CompressorIn_bh6_8_15);
   heap_bh6_w8_5 <= CompressorOut_bh6_8_8(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w9_6 <= CompressorOut_bh6_8_8(1); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_9_16 <= heap_bh6_w11_2 & heap_bh6_w11_1 & heap_bh6_w11_0;
   Compressor_bh6_9: Compressor_3_2
      port map ( R => CompressorOut_bh6_9_9   ,
                 X0 => CompressorIn_bh6_9_16);
   heap_bh6_w11_5 <= CompressorOut_bh6_9_9(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w12_6 <= CompressorOut_bh6_9_9(1); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_10_17 <= heap_bh6_w14_2 & heap_bh6_w14_1 & heap_bh6_w14_0;
   Compressor_bh6_10: Compressor_3_2
      port map ( R => CompressorOut_bh6_10_10   ,
                 X0 => CompressorIn_bh6_10_17);
   heap_bh6_w14_5 <= CompressorOut_bh6_10_10(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w15_6 <= CompressorOut_bh6_10_10(1); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_11_18 <= heap_bh6_w17_2 & heap_bh6_w17_1 & heap_bh6_w17_0;
   Compressor_bh6_11: Compressor_3_2
      port map ( R => CompressorOut_bh6_11_11   ,
                 X0 => CompressorIn_bh6_11_18);
   heap_bh6_w17_5 <= CompressorOut_bh6_11_11(0); -- cycle= 0 cp= 1.11376e-09
   heap_bh6_w18_6 <= CompressorOut_bh6_11_11(1); -- cycle= 0 cp= 1.11376e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_12_19 <= heap_bh6_w7_1 & heap_bh6_w7_0 & heap_bh6_w7_4;
   CompressorIn_bh6_12_20 <= heap_bh6_w8_5 & heap_bh6_w8_4;
   Compressor_bh6_12: Compressor_23_3
      port map ( R => CompressorOut_bh6_12_12   ,
                 X0 => CompressorIn_bh6_12_19,
                 X1 => CompressorIn_bh6_12_20);
   heap_bh6_w7_5 <= CompressorOut_bh6_12_12(0); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w8_6 <= CompressorOut_bh6_12_12(1); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w9_7 <= CompressorOut_bh6_12_12(2); -- cycle= 0 cp= 1.64448e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_13_21 <= heap_bh6_w10_1 & heap_bh6_w10_0 & heap_bh6_w10_4;
   CompressorIn_bh6_13_22 <= heap_bh6_w11_5 & heap_bh6_w11_4;
   Compressor_bh6_13: Compressor_23_3
      port map ( R => CompressorOut_bh6_13_13   ,
                 X0 => CompressorIn_bh6_13_21,
                 X1 => CompressorIn_bh6_13_22);
   heap_bh6_w10_5 <= CompressorOut_bh6_13_13(0); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w11_6 <= CompressorOut_bh6_13_13(1); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w12_7 <= CompressorOut_bh6_13_13(2); -- cycle= 0 cp= 1.64448e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_14_23 <= heap_bh6_w13_1 & heap_bh6_w13_0 & heap_bh6_w13_4;
   CompressorIn_bh6_14_24 <= heap_bh6_w14_5 & heap_bh6_w14_4;
   Compressor_bh6_14: Compressor_23_3
      port map ( R => CompressorOut_bh6_14_14   ,
                 X0 => CompressorIn_bh6_14_23,
                 X1 => CompressorIn_bh6_14_24);
   heap_bh6_w13_5 <= CompressorOut_bh6_14_14(0); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w14_6 <= CompressorOut_bh6_14_14(1); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w15_7 <= CompressorOut_bh6_14_14(2); -- cycle= 0 cp= 1.64448e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_15_25 <= heap_bh6_w16_1 & heap_bh6_w16_0 & heap_bh6_w16_4;
   CompressorIn_bh6_15_26 <= heap_bh6_w17_5 & heap_bh6_w17_4;
   Compressor_bh6_15: Compressor_23_3
      port map ( R => CompressorOut_bh6_15_15   ,
                 X0 => CompressorIn_bh6_15_25,
                 X1 => CompressorIn_bh6_15_26);
   heap_bh6_w16_5 <= CompressorOut_bh6_15_15(0); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w17_6 <= CompressorOut_bh6_15_15(1); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w18_7 <= CompressorOut_bh6_15_15(2); -- cycle= 0 cp= 1.64448e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_16_27 <= heap_bh6_w19_1 & heap_bh6_w19_0 & heap_bh6_w19_4;
   CompressorIn_bh6_16_28 <= heap_bh6_w20_5 & heap_bh6_w20_4;
   Compressor_bh6_16: Compressor_23_3
      port map ( R => CompressorOut_bh6_16_16   ,
                 X0 => CompressorIn_bh6_16_27,
                 X1 => CompressorIn_bh6_16_28);
   heap_bh6_w19_5 <= CompressorOut_bh6_16_16(0); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w20_6 <= CompressorOut_bh6_16_16(1); -- cycle= 0 cp= 1.64448e-09
   heap_bh6_w21_5 <= CompressorOut_bh6_16_16(2); -- cycle= 0 cp= 1.64448e-09

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_17_29 <= heap_bh6_w21_0_d1 & heap_bh6_w21_4_d1 & heap_bh6_w21_5_d1;
   CompressorIn_bh6_17_30 <= heap_bh6_w22_0_d1 & heap_bh6_w22_2_d1;
   Compressor_bh6_17: Compressor_23_3
      port map ( R => CompressorOut_bh6_17_17   ,
                 X0 => CompressorIn_bh6_17_29,
                 X1 => CompressorIn_bh6_17_30);
   heap_bh6_w21_6 <= CompressorOut_bh6_17_17(0); -- cycle= 1 cp= 0
   heap_bh6_w22_3 <= CompressorOut_bh6_17_17(1); -- cycle= 1 cp= 0
   heap_bh6_w23_2 <= CompressorOut_bh6_17_17(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_18_31 <= heap_bh6_w9_6_d1 & heap_bh6_w9_5_d1 & heap_bh6_w9_7_d1;
   CompressorIn_bh6_18_32(0) <= heap_bh6_w10_5_d1;
   Compressor_bh6_18: Compressor_13_3
      port map ( R => CompressorOut_bh6_18_18   ,
                 X0 => CompressorIn_bh6_18_31,
                 X1 => CompressorIn_bh6_18_32);
   heap_bh6_w9_8 <= CompressorOut_bh6_18_18(0); -- cycle= 1 cp= 0
   heap_bh6_w10_6 <= CompressorOut_bh6_18_18(1); -- cycle= 1 cp= 0
   heap_bh6_w11_7 <= CompressorOut_bh6_18_18(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_19_33 <= heap_bh6_w12_6_d1 & heap_bh6_w12_5_d1 & heap_bh6_w12_7_d1;
   CompressorIn_bh6_19_34(0) <= heap_bh6_w13_5_d1;
   Compressor_bh6_19: Compressor_13_3
      port map ( R => CompressorOut_bh6_19_19   ,
                 X0 => CompressorIn_bh6_19_33,
                 X1 => CompressorIn_bh6_19_34);
   heap_bh6_w12_8 <= CompressorOut_bh6_19_19(0); -- cycle= 1 cp= 0
   heap_bh6_w13_6 <= CompressorOut_bh6_19_19(1); -- cycle= 1 cp= 0
   heap_bh6_w14_7 <= CompressorOut_bh6_19_19(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_20_35 <= heap_bh6_w15_6_d1 & heap_bh6_w15_5_d1 & heap_bh6_w15_7_d1;
   CompressorIn_bh6_20_36(0) <= heap_bh6_w16_5_d1;
   Compressor_bh6_20: Compressor_13_3
      port map ( R => CompressorOut_bh6_20_20   ,
                 X0 => CompressorIn_bh6_20_35,
                 X1 => CompressorIn_bh6_20_36);
   heap_bh6_w15_8 <= CompressorOut_bh6_20_20(0); -- cycle= 1 cp= 0
   heap_bh6_w16_6 <= CompressorOut_bh6_20_20(1); -- cycle= 1 cp= 0
   heap_bh6_w17_7 <= CompressorOut_bh6_20_20(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_21_37 <= heap_bh6_w18_6_d1 & heap_bh6_w18_5_d1 & heap_bh6_w18_7_d1;
   CompressorIn_bh6_21_38(0) <= heap_bh6_w19_5_d1;
   Compressor_bh6_21: Compressor_13_3
      port map ( R => CompressorOut_bh6_21_21   ,
                 X0 => CompressorIn_bh6_21_37,
                 X1 => CompressorIn_bh6_21_38);
   heap_bh6_w18_8 <= CompressorOut_bh6_21_21(0); -- cycle= 1 cp= 0
   heap_bh6_w19_6 <= CompressorOut_bh6_21_21(1); -- cycle= 1 cp= 0
   heap_bh6_w20_7 <= CompressorOut_bh6_21_21(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_22_39 <= heap_bh6_w3_5_d1 & heap_bh6_w3_3_d1 & heap_bh6_w3_4;
   CompressorIn_bh6_22_40 <= heap_bh6_w4_0_d1 & heap_bh6_w4_4_d1;
   Compressor_bh6_22: Compressor_23_3
      port map ( R => CompressorOut_bh6_22_22   ,
                 X0 => CompressorIn_bh6_22_39,
                 X1 => CompressorIn_bh6_22_40);
   heap_bh6_w3_6 <= CompressorOut_bh6_22_22(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w4_5 <= CompressorOut_bh6_22_22(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w5_6 <= CompressorOut_bh6_22_22(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_23_41 <= heap_bh6_w5_5_d1 & heap_bh6_w5_4_d1 & heap_bh6_w5_3_d1;
   CompressorIn_bh6_23_42 <= heap_bh6_w6_6_d1 & heap_bh6_w6_5_d1;
   Compressor_bh6_23: Compressor_23_3
      port map ( R => CompressorOut_bh6_23_23   ,
                 X0 => CompressorIn_bh6_23_41,
                 X1 => CompressorIn_bh6_23_42);
   heap_bh6_w5_7 <= CompressorOut_bh6_23_23(0); -- cycle= 1 cp= 0
   heap_bh6_w6_7 <= CompressorOut_bh6_23_23(1); -- cycle= 1 cp= 0
   heap_bh6_w7_6 <= CompressorOut_bh6_23_23(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_24_43 <= heap_bh6_w11_6_d1 & heap_bh6_w11_3_d1 & heap_bh6_w11_7;
   CompressorIn_bh6_24_44 <= heap_bh6_w12_4_d1 & heap_bh6_w12_8;
   Compressor_bh6_24: Compressor_23_3
      port map ( R => CompressorOut_bh6_24_24   ,
                 X0 => CompressorIn_bh6_24_43,
                 X1 => CompressorIn_bh6_24_44);
   heap_bh6_w11_8 <= CompressorOut_bh6_24_24(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w12_9 <= CompressorOut_bh6_24_24(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w13_7 <= CompressorOut_bh6_24_24(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_25_45 <= heap_bh6_w14_6_d1 & heap_bh6_w14_3_d1 & heap_bh6_w14_7;
   CompressorIn_bh6_25_46 <= heap_bh6_w15_4_d1 & heap_bh6_w15_8;
   Compressor_bh6_25: Compressor_23_3
      port map ( R => CompressorOut_bh6_25_25   ,
                 X0 => CompressorIn_bh6_25_45,
                 X1 => CompressorIn_bh6_25_46);
   heap_bh6_w14_8 <= CompressorOut_bh6_25_25(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w15_9 <= CompressorOut_bh6_25_25(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w16_7 <= CompressorOut_bh6_25_25(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_26_47 <= heap_bh6_w17_6_d1 & heap_bh6_w17_3_d1 & heap_bh6_w17_7;
   CompressorIn_bh6_26_48 <= heap_bh6_w18_4_d1 & heap_bh6_w18_8;
   Compressor_bh6_26: Compressor_23_3
      port map ( R => CompressorOut_bh6_26_26   ,
                 X0 => CompressorIn_bh6_26_47,
                 X1 => CompressorIn_bh6_26_48);
   heap_bh6_w17_8 <= CompressorOut_bh6_26_26(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w18_9 <= CompressorOut_bh6_26_26(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w19_7 <= CompressorOut_bh6_26_26(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_27_49 <= heap_bh6_w20_6_d1 & heap_bh6_w20_3_d1 & heap_bh6_w20_7;
   CompressorIn_bh6_27_50 <= heap_bh6_w21_3_d1 & heap_bh6_w21_6;
   Compressor_bh6_27: Compressor_23_3
      port map ( R => CompressorOut_bh6_27_27   ,
                 X0 => CompressorIn_bh6_27_49,
                 X1 => CompressorIn_bh6_27_50);
   heap_bh6_w20_8 <= CompressorOut_bh6_27_27(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w21_7 <= CompressorOut_bh6_27_27(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w22_4 <= CompressorOut_bh6_27_27(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_28_51 <= heap_bh6_w23_0_d1 & heap_bh6_w23_1_d1 & heap_bh6_w23_2;
   CompressorIn_bh6_28_52 <= heap_bh6_w24_0_d1 & heap_bh6_w24_1_d1;
   Compressor_bh6_28: Compressor_23_3
      port map ( R => CompressorOut_bh6_28_28   ,
                 X0 => CompressorIn_bh6_28_51,
                 X1 => CompressorIn_bh6_28_52);
   heap_bh6_w23_3 <= CompressorOut_bh6_28_28(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w24_2 <= CompressorOut_bh6_28_28(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w25_1 <= CompressorOut_bh6_28_28(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_29_53 <= heap_bh6_w7_5_d1 & heap_bh6_w7_3_d1 & heap_bh6_w7_6;
   CompressorIn_bh6_29_54 <= heap_bh6_w8_6_d1 & heap_bh6_w8_3_d1;
   Compressor_bh6_29: Compressor_23_3
      port map ( R => CompressorOut_bh6_29_29   ,
                 X0 => CompressorIn_bh6_29_53,
                 X1 => CompressorIn_bh6_29_54);
   heap_bh6_w7_7 <= CompressorOut_bh6_29_29(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w8_7 <= CompressorOut_bh6_29_29(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w9_9 <= CompressorOut_bh6_29_29(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_30_55 <= heap_bh6_w13_3_d1 & heap_bh6_w13_6 & heap_bh6_w13_7;
   CompressorIn_bh6_30_56(0) <= heap_bh6_w14_8;
   Compressor_bh6_30: Compressor_13_3
      port map ( R => CompressorOut_bh6_30_30   ,
                 X0 => CompressorIn_bh6_30_55,
                 X1 => CompressorIn_bh6_30_56);
   heap_bh6_w13_8 <= CompressorOut_bh6_30_30(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w14_9 <= CompressorOut_bh6_30_30(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w15_10 <= CompressorOut_bh6_30_30(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_31_57 <= heap_bh6_w16_3_d1 & heap_bh6_w16_6 & heap_bh6_w16_7;
   CompressorIn_bh6_31_58(0) <= heap_bh6_w17_8;
   Compressor_bh6_31: Compressor_13_3
      port map ( R => CompressorOut_bh6_31_31   ,
                 X0 => CompressorIn_bh6_31_57,
                 X1 => CompressorIn_bh6_31_58);
   heap_bh6_w16_8 <= CompressorOut_bh6_31_31(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w17_9 <= CompressorOut_bh6_31_31(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w18_10 <= CompressorOut_bh6_31_31(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_32_59 <= heap_bh6_w19_3_d1 & heap_bh6_w19_6 & heap_bh6_w19_7;
   CompressorIn_bh6_32_60(0) <= heap_bh6_w20_8;
   Compressor_bh6_32: Compressor_13_3
      port map ( R => CompressorOut_bh6_32_32   ,
                 X0 => CompressorIn_bh6_32_59,
                 X1 => CompressorIn_bh6_32_60);
   heap_bh6_w19_8 <= CompressorOut_bh6_32_32(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w20_9 <= CompressorOut_bh6_32_32(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w21_8 <= CompressorOut_bh6_32_32(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_33_61 <= heap_bh6_w22_1_d1 & heap_bh6_w22_3 & heap_bh6_w22_4;
   CompressorIn_bh6_33_62(0) <= heap_bh6_w23_3;
   Compressor_bh6_33: Compressor_13_3
      port map ( R => CompressorOut_bh6_33_33   ,
                 X0 => CompressorIn_bh6_33_61,
                 X1 => CompressorIn_bh6_33_62);
   heap_bh6_w22_5 <= CompressorOut_bh6_33_33(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w23_4 <= CompressorOut_bh6_33_33(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w24_3 <= CompressorOut_bh6_33_33(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_34_63 <= heap_bh6_w9_4_d1 & heap_bh6_w9_8 & heap_bh6_w9_9;
   CompressorIn_bh6_34_64 <= heap_bh6_w10_3_d1 & heap_bh6_w10_6;
   Compressor_bh6_34: Compressor_23_3
      port map ( R => CompressorOut_bh6_34_34   ,
                 X0 => CompressorIn_bh6_34_63,
                 X1 => CompressorIn_bh6_34_64);
   heap_bh6_w9_10 <= CompressorOut_bh6_34_34(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w10_7 <= CompressorOut_bh6_34_34(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w11_9 <= CompressorOut_bh6_34_34(2); -- cycle= 1 cp= 1.06144e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w41_0_d2 & heap_bh6_w40_0_d2 & heap_bh6_w39_0_d2 & heap_bh6_w38_0_d2 & heap_bh6_w37_0_d2 & heap_bh6_w36_0_d2 & heap_bh6_w35_0_d2 & heap_bh6_w34_0_d2 & heap_bh6_w33_0_d2 & heap_bh6_w32_0_d2 & heap_bh6_w31_0_d2 & heap_bh6_w30_0_d2 & heap_bh6_w29_0_d2 & heap_bh6_w28_0_d2 & heap_bh6_w27_0_d2 & heap_bh6_w26_0_d2 & heap_bh6_w25_0_d2 & heap_bh6_w24_2_d1 & heap_bh6_w23_4_d1 & heap_bh6_w22_5_d1 & heap_bh6_w21_7_d1 & heap_bh6_w20_9_d1 & heap_bh6_w19_8_d1 & heap_bh6_w18_9_d1 & heap_bh6_w17_9_d1 & heap_bh6_w16_8_d1 & heap_bh6_w15_9_d1 & heap_bh6_w14_9_d1 & heap_bh6_w13_8_d1 & heap_bh6_w12_9_d1 & heap_bh6_w11_8_d1 & heap_bh6_w10_7_d1 & heap_bh6_w9_10_d1 & heap_bh6_w8_7_d1 & heap_bh6_w7_7_d1 & heap_bh6_w6_4_d2 & heap_bh6_w5_7_d1 & heap_bh6_w4_3_d2 & heap_bh6_w3_6_d1 & heap_bh6_w2_2_d2 & heap_bh6_w1_2_d2;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w25_1_d1 & heap_bh6_w24_3_d1 & '0' & '0' & heap_bh6_w21_8_d1 & '0' & '0' & heap_bh6_w18_10_d1 & '0' & '0' & heap_bh6_w15_10_d1 & '0' & '0' & '0' & heap_bh6_w11_9_d1 & '0' & '0' & '0' & '0' & heap_bh6_w6_7_d1 & heap_bh6_w5_6_d1 & heap_bh6_w4_5_d1 & '0' & heap_bh6_w2_3_d1 & heap_bh6_w1_3_d1;
   finalAdderCin_bh6 <= '0';
   Adder_final6_1: IntAdder_42_f400_uid116  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6   ,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_0_d2;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(41 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_33_f400_uid126
--                     (IntAdderClassical_33_F400_uid128)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_33_f400_uid126 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(32 downto 0);
          Y : in  std_logic_vector(32 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(32 downto 0)   );
end entity;

architecture arch of IntAdder_33_f400_uid126 is
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   --Classical
    R <= X + Y + Cin;
end architecture;

--------------------------------------------------------------------------------
--                     FPMult_11_20_F400_uid2_rndd
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPMult_11_20_F400_uid2_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+20+2 downto 0);
          Y : in  std_logic_vector(11+20+2 downto 0);
          R : out  std_logic_vector(11+20+2 downto 0)   );
end entity;

architecture arch of FPMult_11_20_F400_uid2_rndd is
   component IntMultiplier_UsingDSP_21_21_42_unsigned_F400_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(20 downto 0);
             Y : in  std_logic_vector(20 downto 0);
             R : out  std_logic_vector(41 downto 0)   );
   end component;

   component IntAdder_33_f400_uid126 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(32 downto 0);
             Y : in  std_logic_vector(32 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(32 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2, sign_d3 :  std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(12 downto 0);
signal bias, bias_d1 :  std_logic_vector(12 downto 0);
signal expSum, expSum_d1 :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(20 downto 0);
signal sigY :  std_logic_vector(20 downto 0);
signal sigProd :  std_logic_vector(41 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2, exc_d3 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(41 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(32 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(32 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            sign_d2 <=  sign_d1;
            sign_d3 <=  sign_d2;
            expSumPreSub_d1 <=  expSumPreSub;
            bias_d1 <=  bias;
            expSum_d1 <=  expSum;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            exc_d3 <=  exc_d2;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
         end if;
      end process;
   sign <= X(31) xor Y(31);
   expX <= X(30 downto 20);
   expY <= Y(30 downto 20);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(19 downto 0);
   sigY <= "1" & Y(19 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_21_21_42_unsigned_F400_uid4  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(33 downto 32) & Y(33 downto 32);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 2----------------
   norm <= sigProd(41);
   -- exponent update
   expPostNorm <= expSum_d1 + ("000000000000" & norm);
   ----------------Synchro barrier, entering cycle 2----------------
   -- significand normalization shift
   sigProdExt <= sigProd(40 downto 0) & "0" when norm='1' else
                         sigProd(39 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(41 downto 22);
   sticky <= sigProdExt(21);
   ----------------Synchro barrier, entering cycle 3----------------
   guard <= '0' when sigProdExt_d1(20 downto 0)="000000000000000000000" else '1';
   round <= '1' when (sign_d3='1' and (sticky_d1='1' or guard='1')) else '0';
   RoundingAdder: IntAdder_33_f400_uid126  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "000000000000000000000000000000000");
   with expSigPostRound(32 downto 31) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d3 select 
   finalExc <= exc_d3 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d3 & expSigPostRound(30 downto 0);
end architecture;

