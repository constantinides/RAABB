--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_F400_uid9_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_F400_uid9_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_F400_uid9_rndu is
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
--                              Compressor_23_3_rndu
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

entity Compressor_23_3_rndu is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(1 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3_rndu is
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
--                              Compressor_13_3_rndu
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

entity Compressor_13_3_rndu is
   port ( X0 : in  std_logic_vector(2 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_13_3_rndu is
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
--                           IntAdder_41_f400_uid54_rndu
--                     (IntAdderClassical_41_F400_uid56)
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

entity IntAdder_41_f400_uid54_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(40 downto 0);
          Y : in  std_logic_vector(40 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(40 downto 0)   );
end entity;

architecture arch of IntAdder_41_f400_uid54_rndu is
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
--             IntMultiplier_UsingDSP_20_20_40_unsigned_F400_uid4_rndu
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

entity IntMultiplier_UsingDSP_20_20_40_unsigned_F400_uid4_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(19 downto 0);
          Y : in  std_logic_vector(19 downto 0);
          R : out  std_logic_vector(39 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_20_20_40_unsigned_F400_uid4_rndu is
   component IntAdder_41_f400_uid54_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(40 downto 0);
             Y : in  std_logic_vector(40 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(40 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_F400_uid9_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_23_3_rndu is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(1 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_13_3_rndu is
      port ( X0 : in  std_logic_vector(2 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(19 downto 0);
signal YY_m5 :  std_logic_vector(19 downto 0);
signal Xp_m5b7 :  std_logic_vector(20 downto 0);
signal Yp_m5b7 :  std_logic_vector(2 downto 0);
signal x_m5b7_0 :  std_logic_vector(2 downto 0);
signal x_m5b7_1 :  std_logic_vector(2 downto 0);
signal x_m5b7_2 :  std_logic_vector(2 downto 0);
signal x_m5b7_3 :  std_logic_vector(2 downto 0);
signal x_m5b7_4 :  std_logic_vector(2 downto 0);
signal x_m5b7_5 :  std_logic_vector(2 downto 0);
signal x_m5b7_6 :  std_logic_vector(2 downto 0);
signal y_m5b7_0 :  std_logic_vector(2 downto 0);
signal Y0X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0, heap_bh6_w0_0_d1, heap_bh6_w0_0_d2 :  std_logic;
signal heap_bh6_w1_0, heap_bh6_w1_0_d1, heap_bh6_w1_0_d2 :  std_logic;
signal heap_bh6_w2_0, heap_bh6_w2_0_d1 :  std_logic;
signal heap_bh6_w3_0, heap_bh6_w3_0_d1 :  std_logic;
signal heap_bh6_w4_0, heap_bh6_w4_0_d1 :  std_logic;
signal Y0X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w2_1, heap_bh6_w2_1_d1 :  std_logic;
signal heap_bh6_w3_1, heap_bh6_w3_1_d1 :  std_logic;
signal heap_bh6_w4_1, heap_bh6_w4_1_d1 :  std_logic;
signal heap_bh6_w5_0, heap_bh6_w5_0_d1 :  std_logic;
signal heap_bh6_w6_0, heap_bh6_w6_0_d1 :  std_logic;
signal heap_bh6_w7_0, heap_bh6_w7_0_d1 :  std_logic;
signal Y0X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w5_1, heap_bh6_w5_1_d1 :  std_logic;
signal heap_bh6_w6_1, heap_bh6_w6_1_d1 :  std_logic;
signal heap_bh6_w7_1, heap_bh6_w7_1_d1 :  std_logic;
signal heap_bh6_w8_0, heap_bh6_w8_0_d1 :  std_logic;
signal heap_bh6_w9_0, heap_bh6_w9_0_d1 :  std_logic;
signal heap_bh6_w10_0, heap_bh6_w10_0_d1 :  std_logic;
signal Y0X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w8_1, heap_bh6_w8_1_d1 :  std_logic;
signal heap_bh6_w9_1, heap_bh6_w9_1_d1 :  std_logic;
signal heap_bh6_w10_1, heap_bh6_w10_1_d1 :  std_logic;
signal heap_bh6_w11_0, heap_bh6_w11_0_d1 :  std_logic;
signal heap_bh6_w12_0, heap_bh6_w12_0_d1 :  std_logic;
signal heap_bh6_w13_0, heap_bh6_w13_0_d1 :  std_logic;
signal Y0X4_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X4Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w11_1, heap_bh6_w11_1_d1 :  std_logic;
signal heap_bh6_w12_1, heap_bh6_w12_1_d1 :  std_logic;
signal heap_bh6_w13_1, heap_bh6_w13_1_d1 :  std_logic;
signal heap_bh6_w14_0, heap_bh6_w14_0_d1 :  std_logic;
signal heap_bh6_w15_0, heap_bh6_w15_0_d1 :  std_logic;
signal heap_bh6_w16_0, heap_bh6_w16_0_d1 :  std_logic;
signal Y0X5_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X5Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w14_1, heap_bh6_w14_1_d1 :  std_logic;
signal heap_bh6_w15_1, heap_bh6_w15_1_d1 :  std_logic;
signal heap_bh6_w16_1, heap_bh6_w16_1_d1 :  std_logic;
signal heap_bh6_w17_0, heap_bh6_w17_0_d1 :  std_logic;
signal heap_bh6_w18_0, heap_bh6_w18_0_d1 :  std_logic;
signal heap_bh6_w19_0, heap_bh6_w19_0_d1 :  std_logic;
signal Y0X6_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X6Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w17_1, heap_bh6_w17_1_d1 :  std_logic;
signal heap_bh6_w18_1, heap_bh6_w18_1_d1 :  std_logic;
signal heap_bh6_w19_1, heap_bh6_w19_1_d1 :  std_logic;
signal heap_bh6_w20_0, heap_bh6_w20_0_d1 :  std_logic;
signal heap_bh6_w21_0, heap_bh6_w21_0_d1 :  std_logic;
signal heap_bh6_w22_0, heap_bh6_w22_0_d1 :  std_logic;
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
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
signal heap_bh6_w24_0, heap_bh6_w24_0_d1, heap_bh6_w24_0_d2 :  std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 :  std_logic;
signal heap_bh6_w22_1, heap_bh6_w22_1_d1 :  std_logic;
signal heap_bh6_w21_1, heap_bh6_w21_1_d1 :  std_logic;
signal heap_bh6_w20_1, heap_bh6_w20_1_d1 :  std_logic;
signal heap_bh6_w19_2, heap_bh6_w19_2_d1, heap_bh6_w19_2_d2 :  std_logic;
signal heap_bh6_w18_2, heap_bh6_w18_2_d1 :  std_logic;
signal heap_bh6_w17_2, heap_bh6_w17_2_d1, heap_bh6_w17_2_d2 :  std_logic;
signal heap_bh6_w16_2, heap_bh6_w16_2_d1 :  std_logic;
signal heap_bh6_w15_2, heap_bh6_w15_2_d1, heap_bh6_w15_2_d2 :  std_logic;
signal heap_bh6_w14_2, heap_bh6_w14_2_d1 :  std_logic;
signal heap_bh6_w13_2, heap_bh6_w13_2_d1, heap_bh6_w13_2_d2 :  std_logic;
signal heap_bh6_w12_2, heap_bh6_w12_2_d1 :  std_logic;
signal heap_bh6_w11_2, heap_bh6_w11_2_d1, heap_bh6_w11_2_d2 :  std_logic;
signal heap_bh6_w10_2, heap_bh6_w10_2_d1 :  std_logic;
signal heap_bh6_w9_2, heap_bh6_w9_2_d1, heap_bh6_w9_2_d2 :  std_logic;
signal heap_bh6_w8_2, heap_bh6_w8_2_d1 :  std_logic;
signal heap_bh6_w7_2, heap_bh6_w7_2_d1, heap_bh6_w7_2_d2 :  std_logic;
signal heap_bh6_w6_2, heap_bh6_w6_2_d1 :  std_logic;
signal heap_bh6_w5_2, heap_bh6_w5_2_d1, heap_bh6_w5_2_d2 :  std_logic;
signal heap_bh6_w4_2, heap_bh6_w4_2_d1 :  std_logic;
signal heap_bh6_w3_2, heap_bh6_w3_2_d1, heap_bh6_w3_2_d2 :  std_logic;
signal heap_bh6_w2_2, heap_bh6_w2_2_d1 :  std_logic;
signal heap_bh6_w1_1, heap_bh6_w1_1_d1, heap_bh6_w1_1_d2 :  std_logic;
signal heap_bh6_w0_1, heap_bh6_w0_1_d1, heap_bh6_w0_1_d2 :  std_logic;
signal CompressorIn_bh6_0_0 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_0_1 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w2_3, heap_bh6_w2_3_d1 :  std_logic;
signal heap_bh6_w3_3, heap_bh6_w3_3_d1 :  std_logic;
signal heap_bh6_w4_3, heap_bh6_w4_3_d1 :  std_logic;
signal CompressorIn_bh6_1_2 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_1_3 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w4_4, heap_bh6_w4_4_d1 :  std_logic;
signal heap_bh6_w5_3, heap_bh6_w5_3_d1 :  std_logic;
signal heap_bh6_w6_3, heap_bh6_w6_3_d1 :  std_logic;
signal CompressorIn_bh6_2_4 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_2_5 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_4, heap_bh6_w6_4_d1 :  std_logic;
signal heap_bh6_w7_3, heap_bh6_w7_3_d1 :  std_logic;
signal heap_bh6_w8_3, heap_bh6_w8_3_d1 :  std_logic;
signal CompressorIn_bh6_3_6 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_3_7 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w8_4, heap_bh6_w8_4_d1 :  std_logic;
signal heap_bh6_w9_3, heap_bh6_w9_3_d1 :  std_logic;
signal heap_bh6_w10_3, heap_bh6_w10_3_d1 :  std_logic;
signal CompressorIn_bh6_4_8 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_4_9 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_4, heap_bh6_w10_4_d1 :  std_logic;
signal heap_bh6_w11_3, heap_bh6_w11_3_d1 :  std_logic;
signal heap_bh6_w12_3, heap_bh6_w12_3_d1 :  std_logic;
signal CompressorIn_bh6_5_10 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_5_11 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_4, heap_bh6_w12_4_d1 :  std_logic;
signal heap_bh6_w13_3, heap_bh6_w13_3_d1 :  std_logic;
signal heap_bh6_w14_3, heap_bh6_w14_3_d1 :  std_logic;
signal CompressorIn_bh6_6_12 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_6_13 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_4, heap_bh6_w14_4_d1 :  std_logic;
signal heap_bh6_w15_3, heap_bh6_w15_3_d1 :  std_logic;
signal heap_bh6_w16_3, heap_bh6_w16_3_d1 :  std_logic;
signal CompressorIn_bh6_7_14 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_7_15 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_4, heap_bh6_w16_4_d1 :  std_logic;
signal heap_bh6_w17_3, heap_bh6_w17_3_d1 :  std_logic;
signal heap_bh6_w18_3, heap_bh6_w18_3_d1 :  std_logic;
signal CompressorIn_bh6_8_16 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_8_17 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_4, heap_bh6_w18_4_d1 :  std_logic;
signal heap_bh6_w19_3, heap_bh6_w19_3_d1 :  std_logic;
signal heap_bh6_w20_2 :  std_logic;
signal CompressorIn_bh6_9_18 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_9_19 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_3, heap_bh6_w20_3_d1 :  std_logic;
signal heap_bh6_w21_2, heap_bh6_w21_2_d1 :  std_logic;
signal heap_bh6_w22_2 :  std_logic;
signal CompressorIn_bh6_10_20 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_10_21 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_3, heap_bh6_w22_3_d1 :  std_logic;
signal heap_bh6_w23_1, heap_bh6_w23_1_d1 :  std_logic;
signal heap_bh6_w24_1, heap_bh6_w24_1_d1 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(40 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(40 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(40 downto 0);
signal CompressionResult6 :  std_logic_vector(40 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F400_uid9_rndu: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F400_uid9_rndu: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w0_0_d1 <=  heap_bh6_w0_0;
            heap_bh6_w0_0_d2 <=  heap_bh6_w0_0_d1;
            heap_bh6_w1_0_d1 <=  heap_bh6_w1_0;
            heap_bh6_w1_0_d2 <=  heap_bh6_w1_0_d1;
            heap_bh6_w2_0_d1 <=  heap_bh6_w2_0;
            heap_bh6_w3_0_d1 <=  heap_bh6_w3_0;
            heap_bh6_w4_0_d1 <=  heap_bh6_w4_0;
            heap_bh6_w2_1_d1 <=  heap_bh6_w2_1;
            heap_bh6_w3_1_d1 <=  heap_bh6_w3_1;
            heap_bh6_w4_1_d1 <=  heap_bh6_w4_1;
            heap_bh6_w5_0_d1 <=  heap_bh6_w5_0;
            heap_bh6_w6_0_d1 <=  heap_bh6_w6_0;
            heap_bh6_w7_0_d1 <=  heap_bh6_w7_0;
            heap_bh6_w5_1_d1 <=  heap_bh6_w5_1;
            heap_bh6_w6_1_d1 <=  heap_bh6_w6_1;
            heap_bh6_w7_1_d1 <=  heap_bh6_w7_1;
            heap_bh6_w8_0_d1 <=  heap_bh6_w8_0;
            heap_bh6_w9_0_d1 <=  heap_bh6_w9_0;
            heap_bh6_w10_0_d1 <=  heap_bh6_w10_0;
            heap_bh6_w8_1_d1 <=  heap_bh6_w8_1;
            heap_bh6_w9_1_d1 <=  heap_bh6_w9_1;
            heap_bh6_w10_1_d1 <=  heap_bh6_w10_1;
            heap_bh6_w11_0_d1 <=  heap_bh6_w11_0;
            heap_bh6_w12_0_d1 <=  heap_bh6_w12_0;
            heap_bh6_w13_0_d1 <=  heap_bh6_w13_0;
            heap_bh6_w11_1_d1 <=  heap_bh6_w11_1;
            heap_bh6_w12_1_d1 <=  heap_bh6_w12_1;
            heap_bh6_w13_1_d1 <=  heap_bh6_w13_1;
            heap_bh6_w14_0_d1 <=  heap_bh6_w14_0;
            heap_bh6_w15_0_d1 <=  heap_bh6_w15_0;
            heap_bh6_w16_0_d1 <=  heap_bh6_w16_0;
            heap_bh6_w14_1_d1 <=  heap_bh6_w14_1;
            heap_bh6_w15_1_d1 <=  heap_bh6_w15_1;
            heap_bh6_w16_1_d1 <=  heap_bh6_w16_1;
            heap_bh6_w17_0_d1 <=  heap_bh6_w17_0;
            heap_bh6_w18_0_d1 <=  heap_bh6_w18_0;
            heap_bh6_w19_0_d1 <=  heap_bh6_w19_0;
            heap_bh6_w17_1_d1 <=  heap_bh6_w17_1;
            heap_bh6_w18_1_d1 <=  heap_bh6_w18_1;
            heap_bh6_w19_1_d1 <=  heap_bh6_w19_1;
            heap_bh6_w20_0_d1 <=  heap_bh6_w20_0;
            heap_bh6_w21_0_d1 <=  heap_bh6_w21_0;
            heap_bh6_w22_0_d1 <=  heap_bh6_w22_0;
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
            heap_bh6_w24_0_d1 <=  heap_bh6_w24_0;
            heap_bh6_w24_0_d2 <=  heap_bh6_w24_0_d1;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w22_1_d1 <=  heap_bh6_w22_1;
            heap_bh6_w21_1_d1 <=  heap_bh6_w21_1;
            heap_bh6_w20_1_d1 <=  heap_bh6_w20_1;
            heap_bh6_w19_2_d1 <=  heap_bh6_w19_2;
            heap_bh6_w19_2_d2 <=  heap_bh6_w19_2_d1;
            heap_bh6_w18_2_d1 <=  heap_bh6_w18_2;
            heap_bh6_w17_2_d1 <=  heap_bh6_w17_2;
            heap_bh6_w17_2_d2 <=  heap_bh6_w17_2_d1;
            heap_bh6_w16_2_d1 <=  heap_bh6_w16_2;
            heap_bh6_w15_2_d1 <=  heap_bh6_w15_2;
            heap_bh6_w15_2_d2 <=  heap_bh6_w15_2_d1;
            heap_bh6_w14_2_d1 <=  heap_bh6_w14_2;
            heap_bh6_w13_2_d1 <=  heap_bh6_w13_2;
            heap_bh6_w13_2_d2 <=  heap_bh6_w13_2_d1;
            heap_bh6_w12_2_d1 <=  heap_bh6_w12_2;
            heap_bh6_w11_2_d1 <=  heap_bh6_w11_2;
            heap_bh6_w11_2_d2 <=  heap_bh6_w11_2_d1;
            heap_bh6_w10_2_d1 <=  heap_bh6_w10_2;
            heap_bh6_w9_2_d1 <=  heap_bh6_w9_2;
            heap_bh6_w9_2_d2 <=  heap_bh6_w9_2_d1;
            heap_bh6_w8_2_d1 <=  heap_bh6_w8_2;
            heap_bh6_w7_2_d1 <=  heap_bh6_w7_2;
            heap_bh6_w7_2_d2 <=  heap_bh6_w7_2_d1;
            heap_bh6_w6_2_d1 <=  heap_bh6_w6_2;
            heap_bh6_w5_2_d1 <=  heap_bh6_w5_2;
            heap_bh6_w5_2_d2 <=  heap_bh6_w5_2_d1;
            heap_bh6_w4_2_d1 <=  heap_bh6_w4_2;
            heap_bh6_w3_2_d1 <=  heap_bh6_w3_2;
            heap_bh6_w3_2_d2 <=  heap_bh6_w3_2_d1;
            heap_bh6_w2_2_d1 <=  heap_bh6_w2_2;
            heap_bh6_w1_1_d1 <=  heap_bh6_w1_1;
            heap_bh6_w1_1_d2 <=  heap_bh6_w1_1_d1;
            heap_bh6_w0_1_d1 <=  heap_bh6_w0_1;
            heap_bh6_w0_1_d2 <=  heap_bh6_w0_1_d1;
            heap_bh6_w2_3_d1 <=  heap_bh6_w2_3;
            heap_bh6_w3_3_d1 <=  heap_bh6_w3_3;
            heap_bh6_w4_3_d1 <=  heap_bh6_w4_3;
            heap_bh6_w4_4_d1 <=  heap_bh6_w4_4;
            heap_bh6_w5_3_d1 <=  heap_bh6_w5_3;
            heap_bh6_w6_3_d1 <=  heap_bh6_w6_3;
            heap_bh6_w6_4_d1 <=  heap_bh6_w6_4;
            heap_bh6_w7_3_d1 <=  heap_bh6_w7_3;
            heap_bh6_w8_3_d1 <=  heap_bh6_w8_3;
            heap_bh6_w8_4_d1 <=  heap_bh6_w8_4;
            heap_bh6_w9_3_d1 <=  heap_bh6_w9_3;
            heap_bh6_w10_3_d1 <=  heap_bh6_w10_3;
            heap_bh6_w10_4_d1 <=  heap_bh6_w10_4;
            heap_bh6_w11_3_d1 <=  heap_bh6_w11_3;
            heap_bh6_w12_3_d1 <=  heap_bh6_w12_3;
            heap_bh6_w12_4_d1 <=  heap_bh6_w12_4;
            heap_bh6_w13_3_d1 <=  heap_bh6_w13_3;
            heap_bh6_w14_3_d1 <=  heap_bh6_w14_3;
            heap_bh6_w14_4_d1 <=  heap_bh6_w14_4;
            heap_bh6_w15_3_d1 <=  heap_bh6_w15_3;
            heap_bh6_w16_3_d1 <=  heap_bh6_w16_3;
            heap_bh6_w16_4_d1 <=  heap_bh6_w16_4;
            heap_bh6_w17_3_d1 <=  heap_bh6_w17_3;
            heap_bh6_w18_3_d1 <=  heap_bh6_w18_3;
            heap_bh6_w18_4_d1 <=  heap_bh6_w18_4;
            heap_bh6_w19_3_d1 <=  heap_bh6_w19_3;
            heap_bh6_w20_3_d1 <=  heap_bh6_w20_3;
            heap_bh6_w21_2_d1 <=  heap_bh6_w21_2;
            heap_bh6_w22_3_d1 <=  heap_bh6_w22_3;
            heap_bh6_w23_1_d1 <=  heap_bh6_w23_1;
            heap_bh6_w24_1_d1 <=  heap_bh6_w24_1;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=0 lsbY=0 msbX=20 msbY=3
   Xp_m5b7 <= XX_m5(19 downto 0) & "0";
   Yp_m5b7 <= YY_m5(2 downto 0) & "";
   x_m5b7_0 <= Xp_m5b7(2 downto 0);
   x_m5b7_1 <= Xp_m5b7(5 downto 3);
   x_m5b7_2 <= Xp_m5b7(8 downto 6);
   x_m5b7_3 <= Xp_m5b7(11 downto 9);
   x_m5b7_4 <= Xp_m5b7(14 downto 12);
   x_m5b7_5 <= Xp_m5b7(17 downto 15);
   x_m5b7_6 <= Xp_m5b7(20 downto 18);
   y_m5b7_0 <= Yp_m5b7(2 downto 0);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_7_m5 <= y_m5b7_0 & x_m5b7_0;
   PP_m5_7X0Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_7_m5,
                 Y => PP7X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w0_0 <= PP7X0Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w1_0 <= PP7X0Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w2_0 <= PP7X0Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w3_0 <= PP7X0Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w4_0 <= PP7X0Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X1_7_m5 <= y_m5b7_0 & x_m5b7_1;
   PP_m5_7X1Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X1_7_m5,
                 Y => PP7X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w2_1 <= PP7X1Y0_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w3_1 <= PP7X1Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w4_1 <= PP7X1Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w5_0 <= PP7X1Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w6_0 <= PP7X1Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w7_0 <= PP7X1Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X2_7_m5 <= y_m5b7_0 & x_m5b7_2;
   PP_m5_7X2Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X2_7_m5,
                 Y => PP7X2Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w5_1 <= PP7X2Y0_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w6_1 <= PP7X2Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w7_1 <= PP7X2Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w8_0 <= PP7X2Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w9_0 <= PP7X2Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w10_0 <= PP7X2Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X3_7_m5 <= y_m5b7_0 & x_m5b7_3;
   PP_m5_7X3Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X3_7_m5,
                 Y => PP7X3Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w8_1 <= PP7X3Y0_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w9_1 <= PP7X3Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w10_1 <= PP7X3Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w11_0 <= PP7X3Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w12_0 <= PP7X3Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w13_0 <= PP7X3Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X4_7_m5 <= y_m5b7_0 & x_m5b7_4;
   PP_m5_7X4Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X4_7_m5,
                 Y => PP7X4Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w11_1 <= PP7X4Y0_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w12_1 <= PP7X4Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w13_1 <= PP7X4Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w14_0 <= PP7X4Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w15_0 <= PP7X4Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w16_0 <= PP7X4Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X5_7_m5 <= y_m5b7_0 & x_m5b7_5;
   PP_m5_7X5Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X5_7_m5,
                 Y => PP7X5Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w14_1 <= PP7X5Y0_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w15_1 <= PP7X5Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w16_1 <= PP7X5Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w17_0 <= PP7X5Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w18_0 <= PP7X5Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w19_0 <= PP7X5Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   Y0X6_7_m5 <= y_m5b7_0 & x_m5b7_6;
   PP_m5_7X6Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X6_7_m5,
                 Y => PP7X6Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w17_1 <= PP7X6Y0_m5(0); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w18_1 <= PP7X6Y0_m5(1); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w19_1 <= PP7X6Y0_m5(2); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w20_0 <= PP7X6Y0_m5(3); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w21_0 <= PP7X6Y0_m5(4); -- cycle= 0 cp= 5.8304e-10
   heap_bh6_w22_0 <= PP7X6Y0_m5(5); -- cycle= 0 cp= 5.8304e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= std_logic_vector(unsigned("" & XX_m5(19 downto 0) & "0000") * unsigned("" & YY_m5(19 downto 3) & ""));
   heap_bh6_w39_0 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_0 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_0 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_0 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_0 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_0 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_0 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_1 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_1 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_1 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_2 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_2 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_2 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_2 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_2 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_2 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_2 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_2 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_2 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_2 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_2 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_2 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_2 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_2 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_2 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_2 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_2 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w2_2 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w1_1 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w0_1 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w2_1_d1 & heap_bh6_w2_0_d1 & heap_bh6_w2_2_d1;
   CompressorIn_bh6_0_1 <= heap_bh6_w3_1_d1 & heap_bh6_w3_0_d1;
   Compressor_bh6_0: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_0_0   ,
                 X0 => CompressorIn_bh6_0_0,
                 X1 => CompressorIn_bh6_0_1);
   heap_bh6_w2_3 <= CompressorOut_bh6_0_0(0); -- cycle= 1 cp= 0
   heap_bh6_w3_3 <= CompressorOut_bh6_0_0(1); -- cycle= 1 cp= 0
   heap_bh6_w4_3 <= CompressorOut_bh6_0_0(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_1_2 <= heap_bh6_w4_1_d1 & heap_bh6_w4_0_d1 & heap_bh6_w4_2_d1;
   CompressorIn_bh6_1_3 <= heap_bh6_w5_1_d1 & heap_bh6_w5_0_d1;
   Compressor_bh6_1: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_1_1   ,
                 X0 => CompressorIn_bh6_1_2,
                 X1 => CompressorIn_bh6_1_3);
   heap_bh6_w4_4 <= CompressorOut_bh6_1_1(0); -- cycle= 1 cp= 0
   heap_bh6_w5_3 <= CompressorOut_bh6_1_1(1); -- cycle= 1 cp= 0
   heap_bh6_w6_3 <= CompressorOut_bh6_1_1(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_2_4 <= heap_bh6_w6_1_d1 & heap_bh6_w6_0_d1 & heap_bh6_w6_2_d1;
   CompressorIn_bh6_2_5 <= heap_bh6_w7_1_d1 & heap_bh6_w7_0_d1;
   Compressor_bh6_2: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_2_2   ,
                 X0 => CompressorIn_bh6_2_4,
                 X1 => CompressorIn_bh6_2_5);
   heap_bh6_w6_4 <= CompressorOut_bh6_2_2(0); -- cycle= 1 cp= 0
   heap_bh6_w7_3 <= CompressorOut_bh6_2_2(1); -- cycle= 1 cp= 0
   heap_bh6_w8_3 <= CompressorOut_bh6_2_2(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_3_6 <= heap_bh6_w8_1_d1 & heap_bh6_w8_0_d1 & heap_bh6_w8_2_d1;
   CompressorIn_bh6_3_7 <= heap_bh6_w9_1_d1 & heap_bh6_w9_0_d1;
   Compressor_bh6_3: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_3_3   ,
                 X0 => CompressorIn_bh6_3_6,
                 X1 => CompressorIn_bh6_3_7);
   heap_bh6_w8_4 <= CompressorOut_bh6_3_3(0); -- cycle= 1 cp= 0
   heap_bh6_w9_3 <= CompressorOut_bh6_3_3(1); -- cycle= 1 cp= 0
   heap_bh6_w10_3 <= CompressorOut_bh6_3_3(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_4_8 <= heap_bh6_w10_1_d1 & heap_bh6_w10_0_d1 & heap_bh6_w10_2_d1;
   CompressorIn_bh6_4_9 <= heap_bh6_w11_1_d1 & heap_bh6_w11_0_d1;
   Compressor_bh6_4: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_4_4   ,
                 X0 => CompressorIn_bh6_4_8,
                 X1 => CompressorIn_bh6_4_9);
   heap_bh6_w10_4 <= CompressorOut_bh6_4_4(0); -- cycle= 1 cp= 0
   heap_bh6_w11_3 <= CompressorOut_bh6_4_4(1); -- cycle= 1 cp= 0
   heap_bh6_w12_3 <= CompressorOut_bh6_4_4(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_5_10 <= heap_bh6_w12_1_d1 & heap_bh6_w12_0_d1 & heap_bh6_w12_2_d1;
   CompressorIn_bh6_5_11 <= heap_bh6_w13_1_d1 & heap_bh6_w13_0_d1;
   Compressor_bh6_5: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_5_5   ,
                 X0 => CompressorIn_bh6_5_10,
                 X1 => CompressorIn_bh6_5_11);
   heap_bh6_w12_4 <= CompressorOut_bh6_5_5(0); -- cycle= 1 cp= 0
   heap_bh6_w13_3 <= CompressorOut_bh6_5_5(1); -- cycle= 1 cp= 0
   heap_bh6_w14_3 <= CompressorOut_bh6_5_5(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_6_12 <= heap_bh6_w14_1_d1 & heap_bh6_w14_0_d1 & heap_bh6_w14_2_d1;
   CompressorIn_bh6_6_13 <= heap_bh6_w15_1_d1 & heap_bh6_w15_0_d1;
   Compressor_bh6_6: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_6_6   ,
                 X0 => CompressorIn_bh6_6_12,
                 X1 => CompressorIn_bh6_6_13);
   heap_bh6_w14_4 <= CompressorOut_bh6_6_6(0); -- cycle= 1 cp= 0
   heap_bh6_w15_3 <= CompressorOut_bh6_6_6(1); -- cycle= 1 cp= 0
   heap_bh6_w16_3 <= CompressorOut_bh6_6_6(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_7_14 <= heap_bh6_w16_1_d1 & heap_bh6_w16_0_d1 & heap_bh6_w16_2_d1;
   CompressorIn_bh6_7_15 <= heap_bh6_w17_1_d1 & heap_bh6_w17_0_d1;
   Compressor_bh6_7: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_7_7   ,
                 X0 => CompressorIn_bh6_7_14,
                 X1 => CompressorIn_bh6_7_15);
   heap_bh6_w16_4 <= CompressorOut_bh6_7_7(0); -- cycle= 1 cp= 0
   heap_bh6_w17_3 <= CompressorOut_bh6_7_7(1); -- cycle= 1 cp= 0
   heap_bh6_w18_3 <= CompressorOut_bh6_7_7(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_8_16 <= heap_bh6_w18_1_d1 & heap_bh6_w18_0_d1 & heap_bh6_w18_2_d1;
   CompressorIn_bh6_8_17 <= heap_bh6_w19_1_d1 & heap_bh6_w19_0_d1;
   Compressor_bh6_8: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_8_8   ,
                 X0 => CompressorIn_bh6_8_16,
                 X1 => CompressorIn_bh6_8_17);
   heap_bh6_w18_4 <= CompressorOut_bh6_8_8(0); -- cycle= 1 cp= 0
   heap_bh6_w19_3 <= CompressorOut_bh6_8_8(1); -- cycle= 1 cp= 0
   heap_bh6_w20_2 <= CompressorOut_bh6_8_8(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_9_18 <= heap_bh6_w20_0_d1 & heap_bh6_w20_1_d1 & heap_bh6_w20_2;
   CompressorIn_bh6_9_19 <= heap_bh6_w21_0_d1 & heap_bh6_w21_1_d1;
   Compressor_bh6_9: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_9_9   ,
                 X0 => CompressorIn_bh6_9_18,
                 X1 => CompressorIn_bh6_9_19);
   heap_bh6_w20_3 <= CompressorOut_bh6_9_9(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w21_2 <= CompressorOut_bh6_9_9(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w22_2 <= CompressorOut_bh6_9_9(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_10_20 <= heap_bh6_w22_0_d1 & heap_bh6_w22_1_d1 & heap_bh6_w22_2;
   CompressorIn_bh6_10_21(0) <= heap_bh6_w23_0_d1;
   Compressor_bh6_10: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_10_10   ,
                 X0 => CompressorIn_bh6_10_20,
                 X1 => CompressorIn_bh6_10_21);
   heap_bh6_w22_3 <= CompressorOut_bh6_10_10(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w23_1 <= CompressorOut_bh6_10_10(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w24_1 <= CompressorOut_bh6_10_10(2); -- cycle= 1 cp= 1.06144e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w39_0_d2 & heap_bh6_w38_0_d2 & heap_bh6_w37_0_d2 & heap_bh6_w36_0_d2 & heap_bh6_w35_0_d2 & heap_bh6_w34_0_d2 & heap_bh6_w33_0_d2 & heap_bh6_w32_0_d2 & heap_bh6_w31_0_d2 & heap_bh6_w30_0_d2 & heap_bh6_w29_0_d2 & heap_bh6_w28_0_d2 & heap_bh6_w27_0_d2 & heap_bh6_w26_0_d2 & heap_bh6_w25_0_d2 & heap_bh6_w24_0_d2 & heap_bh6_w23_1_d1 & heap_bh6_w22_3_d1 & heap_bh6_w21_2_d1 & heap_bh6_w20_3_d1 & heap_bh6_w19_2_d2 & heap_bh6_w18_4_d1 & heap_bh6_w17_2_d2 & heap_bh6_w16_4_d1 & heap_bh6_w15_2_d2 & heap_bh6_w14_4_d1 & heap_bh6_w13_2_d2 & heap_bh6_w12_4_d1 & heap_bh6_w11_2_d2 & heap_bh6_w10_4_d1 & heap_bh6_w9_2_d2 & heap_bh6_w8_4_d1 & heap_bh6_w7_2_d2 & heap_bh6_w6_4_d1 & heap_bh6_w5_2_d2 & heap_bh6_w4_4_d1 & heap_bh6_w3_2_d2 & heap_bh6_w2_3_d1 & heap_bh6_w1_0_d2 & heap_bh6_w0_0_d2;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w24_1_d1 & '0' & '0' & '0' & '0' & heap_bh6_w19_3_d1 & heap_bh6_w18_3_d1 & heap_bh6_w17_3_d1 & heap_bh6_w16_3_d1 & heap_bh6_w15_3_d1 & heap_bh6_w14_3_d1 & heap_bh6_w13_3_d1 & heap_bh6_w12_3_d1 & heap_bh6_w11_3_d1 & heap_bh6_w10_3_d1 & heap_bh6_w9_3_d1 & heap_bh6_w8_3_d1 & heap_bh6_w7_3_d1 & heap_bh6_w6_3_d1 & heap_bh6_w5_3_d1 & heap_bh6_w4_3_d1 & heap_bh6_w3_3_d1 & '0' & heap_bh6_w1_1_d2 & heap_bh6_w0_1_d2;
   finalAdderCin_bh6 <= '0';
   Adder_final6_0: IntAdder_41_f400_uid54_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6   ,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(39 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_32_f400_uid64_rndu
--                     (IntAdderClassical_32_F400_uid66)
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

entity IntAdder_32_f400_uid64_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(31 downto 0);
          Y : in  std_logic_vector(31 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(31 downto 0)   );
end entity;

architecture arch of IntAdder_32_f400_uid64_rndu is
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
--                     FPMult_11_19_F400_uid2_rndu
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

entity FPMult_11_19_F400_uid2_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+19+2 downto 0);
          Y : in  std_logic_vector(11+19+2 downto 0);
          R : out  std_logic_vector(11+19+2 downto 0)   );
end entity;

architecture arch of FPMult_11_19_F400_uid2_rndu is
   component IntMultiplier_UsingDSP_20_20_40_unsigned_F400_uid4_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(19 downto 0);
             Y : in  std_logic_vector(19 downto 0);
             R : out  std_logic_vector(39 downto 0)   );
   end component;

   component IntAdder_32_f400_uid64_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(31 downto 0);
             Y : in  std_logic_vector(31 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(31 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2, sign_d3 :  std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(12 downto 0);
signal bias, bias_d1 :  std_logic_vector(12 downto 0);
signal expSum, expSum_d1 :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(19 downto 0);
signal sigY :  std_logic_vector(19 downto 0);
signal sigProd :  std_logic_vector(39 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2, exc_d3 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(39 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(31 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(31 downto 0);
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
   sign <= X(30) xor Y(30);
   expX <= X(29 downto 19);
   expY <= Y(29 downto 19);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(18 downto 0);
   sigY <= "1" & Y(18 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_20_20_40_unsigned_F400_uid4_rndu  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 2----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(32 downto 31) & Y(32 downto 31);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 2----------------
   norm <= sigProd(39);
   -- exponent update
   expPostNorm <= expSum_d1 + ("000000000000" & norm);
   ----------------Synchro barrier, entering cycle 2----------------
   -- significand normalization shift
   sigProdExt <= sigProd(38 downto 0) & "0" when norm='1' else
                         sigProd(37 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(39 downto 21);
   sticky <= sigProdExt(20);
   ----------------Synchro barrier, entering cycle 3----------------
   guard <= '0' when sigProdExt_d1(19 downto 0)="00000000000000000000" else '1';
   round <= '1' when (sign_d3='0' and (sticky_d1='1' or guard='1')) else '0';
   RoundingAdder: IntAdder_32_f400_uid64_rndu  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "00000000000000000000000000000000");
   with expSigPostRound(31 downto 30) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d3 select 
   finalExc <= exc_d3 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d3 & expSigPostRound(29 downto 0);
end architecture;

