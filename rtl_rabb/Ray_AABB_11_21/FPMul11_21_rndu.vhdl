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
--                              Compressor_14_3_rndu
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

entity Compressor_14_3_rndu is
   port ( X0 : in  std_logic_vector(3 downto 0);
          X1 : in  std_logic_vector(0 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3_rndu is
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
--                          IntAdder_44_f400_uid132_rndu
--                    (IntAdderAlternative_44_F400_uid136)
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_44_f400_uid132_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(43 downto 0);
          Y : in  std_logic_vector(43 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(43 downto 0)   );
end entity;

architecture arch of IntAdder_44_f400_uid132_rndu is
signal s_sum_l0_idx0 :  std_logic_vector(42 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(2 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(41 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(1 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(2 downto 0);
signal sum_l1_idx1 :  std_logic_vector(1 downto 0);
signal c_l1_idx1 :  std_logic_vector(0 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            s_sum_l0_idx1_d1 <=  s_sum_l0_idx1;
            sum_l0_idx0_d1 <=  sum_l0_idx0;
            c_l0_idx0_d1 <=  c_l0_idx0;
         end if;
      end process;
   --Alternative
   s_sum_l0_idx0 <= ( "0" & X(41 downto 0)) + ( "0" & Y(41 downto 0)) + Cin;
   s_sum_l0_idx1 <= ( "0" & X(43 downto 42)) + ( "0" & Y(43 downto 42));
   sum_l0_idx0 <= s_sum_l0_idx0(41 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(42 downto 42);
   sum_l0_idx1 <= s_sum_l0_idx1(1 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(2 downto 2);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(1 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(2 downto 2);
   R <= sum_l1_idx1(1 downto 0) & sum_l0_idx0_d1(41 downto 0);
end architecture;

--------------------------------------------------------------------------------
--             IntMultiplier_UsingDSP_22_22_44_unsigned_F400_uid4_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_22_22_44_unsigned_F400_uid4_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(21 downto 0);
          Y : in  std_logic_vector(21 downto 0);
          R : out  std_logic_vector(43 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_22_22_44_unsigned_F400_uid4_rndu is
   component IntAdder_44_f400_uid132_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(43 downto 0);
             Y : in  std_logic_vector(43 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(43 downto 0)   );
   end component;

   component SmallMultTableP3x3r6XuYu_F400_uid9_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

   component Compressor_14_3_rndu is
      port ( X0 : in  std_logic_vector(3 downto 0);
             X1 : in  std_logic_vector(0 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
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

signal XX_m5 :  std_logic_vector(21 downto 0);
signal YY_m5 :  std_logic_vector(21 downto 0);
signal Xp_m5b7 :  std_logic_vector(23 downto 0);
signal Yp_m5b7 :  std_logic_vector(5 downto 0);
signal x_m5b7_0 :  std_logic_vector(2 downto 0);
signal x_m5b7_1 :  std_logic_vector(2 downto 0);
signal x_m5b7_2 :  std_logic_vector(2 downto 0);
signal x_m5b7_3 :  std_logic_vector(2 downto 0);
signal x_m5b7_4 :  std_logic_vector(2 downto 0);
signal x_m5b7_5 :  std_logic_vector(2 downto 0);
signal x_m5b7_6 :  std_logic_vector(2 downto 0);
signal x_m5b7_7 :  std_logic_vector(2 downto 0);
signal y_m5b7_0 :  std_logic_vector(2 downto 0);
signal y_m5b7_1 :  std_logic_vector(2 downto 0);
signal Y0X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0, heap_bh6_w1_0_d1, heap_bh6_w1_0_d2 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal Y0X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w1_1, heap_bh6_w1_1_d1, heap_bh6_w1_1_d2 :  std_logic;
signal heap_bh6_w2_1 :  std_logic;
signal heap_bh6_w3_0, heap_bh6_w3_0_d1 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal Y0X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w4_1 :  std_logic;
signal heap_bh6_w5_1 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w8_0 :  std_logic;
signal Y0X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w7_1 :  std_logic;
signal heap_bh6_w8_1 :  std_logic;
signal heap_bh6_w9_0 :  std_logic;
signal heap_bh6_w10_0 :  std_logic;
signal heap_bh6_w11_0 :  std_logic;
signal Y0X4_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X4Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w10_1 :  std_logic;
signal heap_bh6_w11_1 :  std_logic;
signal heap_bh6_w12_0 :  std_logic;
signal heap_bh6_w13_0 :  std_logic;
signal heap_bh6_w14_0 :  std_logic;
signal Y0X5_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X5Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w13_1 :  std_logic;
signal heap_bh6_w14_1 :  std_logic;
signal heap_bh6_w15_0 :  std_logic;
signal heap_bh6_w16_0 :  std_logic;
signal heap_bh6_w17_0 :  std_logic;
signal Y0X6_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X6Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w16_1 :  std_logic;
signal heap_bh6_w17_1 :  std_logic;
signal heap_bh6_w18_0 :  std_logic;
signal heap_bh6_w19_0 :  std_logic;
signal heap_bh6_w20_0 :  std_logic;
signal Y0X7_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X7Y0_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w19_1 :  std_logic;
signal heap_bh6_w20_1 :  std_logic;
signal heap_bh6_w21_0 :  std_logic;
signal heap_bh6_w22_0 :  std_logic;
signal heap_bh6_w23_0, heap_bh6_w23_0_d1 :  std_logic;
signal Y1X0_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X0Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w2_2 :  std_logic;
signal heap_bh6_w3_1 :  std_logic;
signal heap_bh6_w4_2 :  std_logic;
signal heap_bh6_w5_2 :  std_logic;
signal Y1X1_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X1Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w3_2 :  std_logic;
signal heap_bh6_w4_3 :  std_logic;
signal heap_bh6_w5_3 :  std_logic;
signal heap_bh6_w6_1 :  std_logic;
signal heap_bh6_w7_2 :  std_logic;
signal heap_bh6_w8_2 :  std_logic;
signal Y1X2_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X2Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w6_2 :  std_logic;
signal heap_bh6_w7_3 :  std_logic;
signal heap_bh6_w8_3 :  std_logic;
signal heap_bh6_w9_1 :  std_logic;
signal heap_bh6_w10_2 :  std_logic;
signal heap_bh6_w11_2 :  std_logic;
signal Y1X3_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X3Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w9_2 :  std_logic;
signal heap_bh6_w10_3 :  std_logic;
signal heap_bh6_w11_3 :  std_logic;
signal heap_bh6_w12_1 :  std_logic;
signal heap_bh6_w13_2 :  std_logic;
signal heap_bh6_w14_2 :  std_logic;
signal Y1X4_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X4Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w12_2 :  std_logic;
signal heap_bh6_w13_3 :  std_logic;
signal heap_bh6_w14_3 :  std_logic;
signal heap_bh6_w15_1 :  std_logic;
signal heap_bh6_w16_2 :  std_logic;
signal heap_bh6_w17_2 :  std_logic;
signal Y1X5_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X5Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w15_2 :  std_logic;
signal heap_bh6_w16_3 :  std_logic;
signal heap_bh6_w17_3 :  std_logic;
signal heap_bh6_w18_1 :  std_logic;
signal heap_bh6_w19_2 :  std_logic;
signal heap_bh6_w20_2 :  std_logic;
signal Y1X6_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X6Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w18_2 :  std_logic;
signal heap_bh6_w19_3 :  std_logic;
signal heap_bh6_w20_3 :  std_logic;
signal heap_bh6_w21_1 :  std_logic;
signal heap_bh6_w22_1 :  std_logic;
signal heap_bh6_w23_1 :  std_logic;
signal Y1X7_7_m5 :  std_logic_vector(5 downto 0);
signal PP7X7Y1_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w21_2 :  std_logic;
signal heap_bh6_w22_2 :  std_logic;
signal heap_bh6_w23_2 :  std_logic;
signal heap_bh6_w24_0, heap_bh6_w24_0_d1 :  std_logic;
signal heap_bh6_w25_0, heap_bh6_w25_0_d1 :  std_logic;
signal heap_bh6_w26_0, heap_bh6_w26_0_d1 :  std_logic;
signal DSP_bh6_ch0_0 :  std_logic_vector(40 downto 0);
signal heap_bh6_w43_0, heap_bh6_w43_0_d1, heap_bh6_w43_0_d2 :  std_logic;
signal heap_bh6_w42_0, heap_bh6_w42_0_d1, heap_bh6_w42_0_d2 :  std_logic;
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
signal heap_bh6_w26_1, heap_bh6_w26_1_d1 :  std_logic;
signal heap_bh6_w25_1, heap_bh6_w25_1_d1 :  std_logic;
signal heap_bh6_w24_1, heap_bh6_w24_1_d1 :  std_logic;
signal heap_bh6_w23_3, heap_bh6_w23_3_d1 :  std_logic;
signal heap_bh6_w22_3, heap_bh6_w22_3_d1 :  std_logic;
signal heap_bh6_w21_3, heap_bh6_w21_3_d1 :  std_logic;
signal heap_bh6_w20_4, heap_bh6_w20_4_d1 :  std_logic;
signal heap_bh6_w19_4, heap_bh6_w19_4_d1 :  std_logic;
signal heap_bh6_w18_3, heap_bh6_w18_3_d1 :  std_logic;
signal heap_bh6_w17_4, heap_bh6_w17_4_d1 :  std_logic;
signal heap_bh6_w16_4, heap_bh6_w16_4_d1 :  std_logic;
signal heap_bh6_w15_3, heap_bh6_w15_3_d1 :  std_logic;
signal heap_bh6_w14_4, heap_bh6_w14_4_d1 :  std_logic;
signal heap_bh6_w13_4, heap_bh6_w13_4_d1 :  std_logic;
signal heap_bh6_w12_3, heap_bh6_w12_3_d1 :  std_logic;
signal heap_bh6_w11_4, heap_bh6_w11_4_d1 :  std_logic;
signal heap_bh6_w10_4, heap_bh6_w10_4_d1 :  std_logic;
signal heap_bh6_w9_3, heap_bh6_w9_3_d1 :  std_logic;
signal heap_bh6_w8_4, heap_bh6_w8_4_d1 :  std_logic;
signal heap_bh6_w7_4, heap_bh6_w7_4_d1 :  std_logic;
signal heap_bh6_w6_3, heap_bh6_w6_3_d1 :  std_logic;
signal heap_bh6_w5_4, heap_bh6_w5_4_d1 :  std_logic;
signal heap_bh6_w4_4, heap_bh6_w4_4_d1, heap_bh6_w4_4_d2 :  std_logic;
signal heap_bh6_w3_3, heap_bh6_w3_3_d1 :  std_logic;
signal tempR_bh6_0, tempR_bh6_0_d1, tempR_bh6_0_d2, tempR_bh6_0_d3 :  std_logic;
signal CompressorIn_bh6_0_0 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_0_1 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_0_0 :  std_logic_vector(2 downto 0);
signal heap_bh6_w4_5, heap_bh6_w4_5_d1 :  std_logic;
signal heap_bh6_w5_5, heap_bh6_w5_5_d1 :  std_logic;
signal heap_bh6_w6_4 :  std_logic;
signal CompressorIn_bh6_1_2 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_1_3 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_1_1 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_5 :  std_logic;
signal heap_bh6_w8_5, heap_bh6_w8_5_d1 :  std_logic;
signal heap_bh6_w9_4 :  std_logic;
signal CompressorIn_bh6_2_4 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_2_5 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_2_2 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_5 :  std_logic;
signal heap_bh6_w11_5, heap_bh6_w11_5_d1 :  std_logic;
signal heap_bh6_w12_4 :  std_logic;
signal CompressorIn_bh6_3_6 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_3_7 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_3_3 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_5 :  std_logic;
signal heap_bh6_w14_5, heap_bh6_w14_5_d1 :  std_logic;
signal heap_bh6_w15_4 :  std_logic;
signal CompressorIn_bh6_4_8 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_4_9 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_4_4 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_5 :  std_logic;
signal heap_bh6_w17_5, heap_bh6_w17_5_d1 :  std_logic;
signal heap_bh6_w18_4 :  std_logic;
signal CompressorIn_bh6_5_10 :  std_logic_vector(3 downto 0);
signal CompressorIn_bh6_5_11 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_5_5 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_5 :  std_logic;
signal heap_bh6_w20_5, heap_bh6_w20_5_d1 :  std_logic;
signal heap_bh6_w21_4 :  std_logic;
signal CompressorIn_bh6_6_12 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_6_13 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_6_6 :  std_logic_vector(2 downto 0);
signal heap_bh6_w2_3, heap_bh6_w2_3_d1, heap_bh6_w2_3_d2 :  std_logic;
signal heap_bh6_w3_4, heap_bh6_w3_4_d1 :  std_logic;
signal heap_bh6_w4_6, heap_bh6_w4_6_d1 :  std_logic;
signal CompressorIn_bh6_7_14 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_7_15 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_7_7 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_6, heap_bh6_w5_6_d1 :  std_logic;
signal heap_bh6_w6_5 :  std_logic;
signal heap_bh6_w7_6 :  std_logic;
signal CompressorIn_bh6_8_16 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_8_17 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_8_8 :  std_logic_vector(2 downto 0);
signal heap_bh6_w8_6, heap_bh6_w8_6_d1 :  std_logic;
signal heap_bh6_w9_5 :  std_logic;
signal heap_bh6_w10_6 :  std_logic;
signal CompressorIn_bh6_9_18 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_9_19 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_9_9 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_6, heap_bh6_w11_6_d1 :  std_logic;
signal heap_bh6_w12_5 :  std_logic;
signal heap_bh6_w13_6 :  std_logic;
signal CompressorIn_bh6_10_20 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_10_21 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_10_10 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_6, heap_bh6_w14_6_d1 :  std_logic;
signal heap_bh6_w15_5 :  std_logic;
signal heap_bh6_w16_6 :  std_logic;
signal CompressorIn_bh6_11_22 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_11_23 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_11_11 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_6, heap_bh6_w17_6_d1 :  std_logic;
signal heap_bh6_w18_5 :  std_logic;
signal heap_bh6_w19_6 :  std_logic;
signal CompressorIn_bh6_12_24 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_12_25 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_12_12 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_6, heap_bh6_w20_6_d1 :  std_logic;
signal heap_bh6_w21_5 :  std_logic;
signal heap_bh6_w22_4 :  std_logic;
signal CompressorIn_bh6_13_26 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_13_27 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_13_13 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_5 :  std_logic;
signal heap_bh6_w23_4, heap_bh6_w23_4_d1 :  std_logic;
signal heap_bh6_w24_2, heap_bh6_w24_2_d1 :  std_logic;
signal CompressorIn_bh6_14_28 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_14_29 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_14_14 :  std_logic_vector(2 downto 0);
signal heap_bh6_w6_6, heap_bh6_w6_6_d1 :  std_logic;
signal heap_bh6_w7_7, heap_bh6_w7_7_d1 :  std_logic;
signal heap_bh6_w8_7, heap_bh6_w8_7_d1 :  std_logic;
signal CompressorIn_bh6_15_30 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_15_31 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_15_15 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_6, heap_bh6_w9_6_d1 :  std_logic;
signal heap_bh6_w10_7, heap_bh6_w10_7_d1 :  std_logic;
signal heap_bh6_w11_7, heap_bh6_w11_7_d1 :  std_logic;
signal CompressorIn_bh6_16_32 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_16_33 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_16_16 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_6, heap_bh6_w12_6_d1 :  std_logic;
signal heap_bh6_w13_7, heap_bh6_w13_7_d1 :  std_logic;
signal heap_bh6_w14_7, heap_bh6_w14_7_d1 :  std_logic;
signal CompressorIn_bh6_17_34 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_17_35 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_17_17 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_6, heap_bh6_w15_6_d1 :  std_logic;
signal heap_bh6_w16_7, heap_bh6_w16_7_d1 :  std_logic;
signal heap_bh6_w17_7, heap_bh6_w17_7_d1 :  std_logic;
signal CompressorIn_bh6_18_36 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_18_37 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_18_18 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_6, heap_bh6_w18_6_d1 :  std_logic;
signal heap_bh6_w19_7, heap_bh6_w19_7_d1 :  std_logic;
signal heap_bh6_w20_7, heap_bh6_w20_7_d1 :  std_logic;
signal CompressorIn_bh6_19_38 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_19_39 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_19_19 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_6, heap_bh6_w21_6_d1 :  std_logic;
signal heap_bh6_w22_6, heap_bh6_w22_6_d1 :  std_logic;
signal heap_bh6_w23_5, heap_bh6_w23_5_d1 :  std_logic;
signal CompressorIn_bh6_20_40 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_20_41 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_20_20 :  std_logic_vector(2 downto 0);
signal heap_bh6_w23_6 :  std_logic;
signal heap_bh6_w24_3 :  std_logic;
signal heap_bh6_w25_2 :  std_logic;
signal CompressorIn_bh6_21_42 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_21_43 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_21_21 :  std_logic_vector(2 downto 0);
signal heap_bh6_w8_8 :  std_logic;
signal heap_bh6_w9_7 :  std_logic;
signal heap_bh6_w10_8 :  std_logic;
signal CompressorIn_bh6_22_44 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_22_45 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_22_22 :  std_logic_vector(2 downto 0);
signal heap_bh6_w11_8 :  std_logic;
signal heap_bh6_w12_7 :  std_logic;
signal heap_bh6_w13_8 :  std_logic;
signal CompressorIn_bh6_23_46 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_23_47 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_23_23 :  std_logic_vector(2 downto 0);
signal heap_bh6_w14_8 :  std_logic;
signal heap_bh6_w15_7 :  std_logic;
signal heap_bh6_w16_8 :  std_logic;
signal CompressorIn_bh6_24_48 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_24_49 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_24_24 :  std_logic_vector(2 downto 0);
signal heap_bh6_w17_8 :  std_logic;
signal heap_bh6_w18_7 :  std_logic;
signal heap_bh6_w19_8 :  std_logic;
signal CompressorIn_bh6_25_50 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_25_51 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_25_25 :  std_logic_vector(2 downto 0);
signal heap_bh6_w20_8 :  std_logic;
signal heap_bh6_w21_7 :  std_logic;
signal heap_bh6_w22_7 :  std_logic;
signal CompressorIn_bh6_26_52 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_26_53 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_26_26 :  std_logic_vector(2 downto 0);
signal heap_bh6_w3_5, heap_bh6_w3_5_d1 :  std_logic;
signal heap_bh6_w4_7, heap_bh6_w4_7_d1 :  std_logic;
signal heap_bh6_w5_7, heap_bh6_w5_7_d1 :  std_logic;
signal CompressorIn_bh6_27_54 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_27_55 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_27_27 :  std_logic_vector(2 downto 0);
signal heap_bh6_w5_8, heap_bh6_w5_8_d1 :  std_logic;
signal heap_bh6_w6_7, heap_bh6_w6_7_d1 :  std_logic;
signal heap_bh6_w7_8 :  std_logic;
signal CompressorIn_bh6_28_56 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_28_57 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_28_28 :  std_logic_vector(2 downto 0);
signal heap_bh6_w10_9 :  std_logic;
signal heap_bh6_w11_9, heap_bh6_w11_9_d1 :  std_logic;
signal heap_bh6_w12_8 :  std_logic;
signal CompressorIn_bh6_29_58 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_29_59 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_29_29 :  std_logic_vector(2 downto 0);
signal heap_bh6_w13_9 :  std_logic;
signal heap_bh6_w14_9, heap_bh6_w14_9_d1 :  std_logic;
signal heap_bh6_w15_8 :  std_logic;
signal CompressorIn_bh6_30_60 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_30_61 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_30_30 :  std_logic_vector(2 downto 0);
signal heap_bh6_w16_9 :  std_logic;
signal heap_bh6_w17_9, heap_bh6_w17_9_d1 :  std_logic;
signal heap_bh6_w18_8 :  std_logic;
signal CompressorIn_bh6_31_62 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_31_63 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_31_31 :  std_logic_vector(2 downto 0);
signal heap_bh6_w19_9 :  std_logic;
signal heap_bh6_w20_9, heap_bh6_w20_9_d1 :  std_logic;
signal heap_bh6_w21_8 :  std_logic;
signal CompressorIn_bh6_32_64 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_32_65 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_32_32 :  std_logic_vector(2 downto 0);
signal heap_bh6_w22_8 :  std_logic;
signal heap_bh6_w23_7, heap_bh6_w23_7_d1 :  std_logic;
signal heap_bh6_w24_4 :  std_logic;
signal CompressorIn_bh6_33_66 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_33_67 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_33_33 :  std_logic_vector(2 downto 0);
signal heap_bh6_w25_3 :  std_logic;
signal heap_bh6_w26_2, heap_bh6_w26_2_d1 :  std_logic;
signal heap_bh6_w27_1, heap_bh6_w27_1_d1 :  std_logic;
signal CompressorIn_bh6_34_68 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_34_69 :  std_logic_vector(1 downto 0);
signal CompressorOut_bh6_34_34 :  std_logic_vector(2 downto 0);
signal heap_bh6_w7_9, heap_bh6_w7_9_d1 :  std_logic;
signal heap_bh6_w8_9, heap_bh6_w8_9_d1 :  std_logic;
signal heap_bh6_w9_8 :  std_logic;
signal CompressorIn_bh6_35_70 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_35_71 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_35_35 :  std_logic_vector(2 downto 0);
signal heap_bh6_w12_9, heap_bh6_w12_9_d1 :  std_logic;
signal heap_bh6_w13_10, heap_bh6_w13_10_d1 :  std_logic;
signal heap_bh6_w14_10, heap_bh6_w14_10_d1 :  std_logic;
signal CompressorIn_bh6_36_72 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_36_73 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_36_36 :  std_logic_vector(2 downto 0);
signal heap_bh6_w15_9, heap_bh6_w15_9_d1 :  std_logic;
signal heap_bh6_w16_10, heap_bh6_w16_10_d1 :  std_logic;
signal heap_bh6_w17_10, heap_bh6_w17_10_d1 :  std_logic;
signal CompressorIn_bh6_37_74 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_37_75 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_37_37 :  std_logic_vector(2 downto 0);
signal heap_bh6_w18_9, heap_bh6_w18_9_d1 :  std_logic;
signal heap_bh6_w19_10, heap_bh6_w19_10_d1 :  std_logic;
signal heap_bh6_w20_10, heap_bh6_w20_10_d1 :  std_logic;
signal CompressorIn_bh6_38_76 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_38_77 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_38_38 :  std_logic_vector(2 downto 0);
signal heap_bh6_w21_9, heap_bh6_w21_9_d1 :  std_logic;
signal heap_bh6_w22_9, heap_bh6_w22_9_d1 :  std_logic;
signal heap_bh6_w23_8, heap_bh6_w23_8_d1 :  std_logic;
signal CompressorIn_bh6_39_78 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_39_79 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_39_39 :  std_logic_vector(2 downto 0);
signal heap_bh6_w24_5, heap_bh6_w24_5_d1 :  std_logic;
signal heap_bh6_w25_4, heap_bh6_w25_4_d1 :  std_logic;
signal heap_bh6_w26_3, heap_bh6_w26_3_d1 :  std_logic;
signal CompressorIn_bh6_40_80 :  std_logic_vector(2 downto 0);
signal CompressorIn_bh6_40_81 :  std_logic_vector(0 downto 0);
signal CompressorOut_bh6_40_40 :  std_logic_vector(2 downto 0);
signal heap_bh6_w9_9, heap_bh6_w9_9_d1 :  std_logic;
signal heap_bh6_w10_10, heap_bh6_w10_10_d1 :  std_logic;
signal heap_bh6_w11_10, heap_bh6_w11_10_d1 :  std_logic;
signal finalAdderIn0_bh6 :  std_logic_vector(43 downto 0);
signal finalAdderIn1_bh6 :  std_logic_vector(43 downto 0);
signal finalAdderCin_bh6 :  std_logic;
signal finalAdderOut_bh6 :  std_logic_vector(43 downto 0);
signal CompressionResult6 :  std_logic_vector(44 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F400_uid9_rndu: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F400_uid9_rndu: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            heap_bh6_w1_0_d1 <=  heap_bh6_w1_0;
            heap_bh6_w1_0_d2 <=  heap_bh6_w1_0_d1;
            heap_bh6_w1_1_d1 <=  heap_bh6_w1_1;
            heap_bh6_w1_1_d2 <=  heap_bh6_w1_1_d1;
            heap_bh6_w3_0_d1 <=  heap_bh6_w3_0;
            heap_bh6_w23_0_d1 <=  heap_bh6_w23_0;
            heap_bh6_w24_0_d1 <=  heap_bh6_w24_0;
            heap_bh6_w25_0_d1 <=  heap_bh6_w25_0;
            heap_bh6_w26_0_d1 <=  heap_bh6_w26_0;
            heap_bh6_w43_0_d1 <=  heap_bh6_w43_0;
            heap_bh6_w43_0_d2 <=  heap_bh6_w43_0_d1;
            heap_bh6_w42_0_d1 <=  heap_bh6_w42_0;
            heap_bh6_w42_0_d2 <=  heap_bh6_w42_0_d1;
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
            heap_bh6_w26_1_d1 <=  heap_bh6_w26_1;
            heap_bh6_w25_1_d1 <=  heap_bh6_w25_1;
            heap_bh6_w24_1_d1 <=  heap_bh6_w24_1;
            heap_bh6_w23_3_d1 <=  heap_bh6_w23_3;
            heap_bh6_w22_3_d1 <=  heap_bh6_w22_3;
            heap_bh6_w21_3_d1 <=  heap_bh6_w21_3;
            heap_bh6_w20_4_d1 <=  heap_bh6_w20_4;
            heap_bh6_w19_4_d1 <=  heap_bh6_w19_4;
            heap_bh6_w18_3_d1 <=  heap_bh6_w18_3;
            heap_bh6_w17_4_d1 <=  heap_bh6_w17_4;
            heap_bh6_w16_4_d1 <=  heap_bh6_w16_4;
            heap_bh6_w15_3_d1 <=  heap_bh6_w15_3;
            heap_bh6_w14_4_d1 <=  heap_bh6_w14_4;
            heap_bh6_w13_4_d1 <=  heap_bh6_w13_4;
            heap_bh6_w12_3_d1 <=  heap_bh6_w12_3;
            heap_bh6_w11_4_d1 <=  heap_bh6_w11_4;
            heap_bh6_w10_4_d1 <=  heap_bh6_w10_4;
            heap_bh6_w9_3_d1 <=  heap_bh6_w9_3;
            heap_bh6_w8_4_d1 <=  heap_bh6_w8_4;
            heap_bh6_w7_4_d1 <=  heap_bh6_w7_4;
            heap_bh6_w6_3_d1 <=  heap_bh6_w6_3;
            heap_bh6_w5_4_d1 <=  heap_bh6_w5_4;
            heap_bh6_w4_4_d1 <=  heap_bh6_w4_4;
            heap_bh6_w4_4_d2 <=  heap_bh6_w4_4_d1;
            heap_bh6_w3_3_d1 <=  heap_bh6_w3_3;
            tempR_bh6_0_d1 <=  tempR_bh6_0;
            tempR_bh6_0_d2 <=  tempR_bh6_0_d1;
            tempR_bh6_0_d3 <=  tempR_bh6_0_d2;
            heap_bh6_w4_5_d1 <=  heap_bh6_w4_5;
            heap_bh6_w5_5_d1 <=  heap_bh6_w5_5;
            heap_bh6_w8_5_d1 <=  heap_bh6_w8_5;
            heap_bh6_w11_5_d1 <=  heap_bh6_w11_5;
            heap_bh6_w14_5_d1 <=  heap_bh6_w14_5;
            heap_bh6_w17_5_d1 <=  heap_bh6_w17_5;
            heap_bh6_w20_5_d1 <=  heap_bh6_w20_5;
            heap_bh6_w2_3_d1 <=  heap_bh6_w2_3;
            heap_bh6_w2_3_d2 <=  heap_bh6_w2_3_d1;
            heap_bh6_w3_4_d1 <=  heap_bh6_w3_4;
            heap_bh6_w4_6_d1 <=  heap_bh6_w4_6;
            heap_bh6_w5_6_d1 <=  heap_bh6_w5_6;
            heap_bh6_w8_6_d1 <=  heap_bh6_w8_6;
            heap_bh6_w11_6_d1 <=  heap_bh6_w11_6;
            heap_bh6_w14_6_d1 <=  heap_bh6_w14_6;
            heap_bh6_w17_6_d1 <=  heap_bh6_w17_6;
            heap_bh6_w20_6_d1 <=  heap_bh6_w20_6;
            heap_bh6_w23_4_d1 <=  heap_bh6_w23_4;
            heap_bh6_w24_2_d1 <=  heap_bh6_w24_2;
            heap_bh6_w6_6_d1 <=  heap_bh6_w6_6;
            heap_bh6_w7_7_d1 <=  heap_bh6_w7_7;
            heap_bh6_w8_7_d1 <=  heap_bh6_w8_7;
            heap_bh6_w9_6_d1 <=  heap_bh6_w9_6;
            heap_bh6_w10_7_d1 <=  heap_bh6_w10_7;
            heap_bh6_w11_7_d1 <=  heap_bh6_w11_7;
            heap_bh6_w12_6_d1 <=  heap_bh6_w12_6;
            heap_bh6_w13_7_d1 <=  heap_bh6_w13_7;
            heap_bh6_w14_7_d1 <=  heap_bh6_w14_7;
            heap_bh6_w15_6_d1 <=  heap_bh6_w15_6;
            heap_bh6_w16_7_d1 <=  heap_bh6_w16_7;
            heap_bh6_w17_7_d1 <=  heap_bh6_w17_7;
            heap_bh6_w18_6_d1 <=  heap_bh6_w18_6;
            heap_bh6_w19_7_d1 <=  heap_bh6_w19_7;
            heap_bh6_w20_7_d1 <=  heap_bh6_w20_7;
            heap_bh6_w21_6_d1 <=  heap_bh6_w21_6;
            heap_bh6_w22_6_d1 <=  heap_bh6_w22_6;
            heap_bh6_w23_5_d1 <=  heap_bh6_w23_5;
            heap_bh6_w3_5_d1 <=  heap_bh6_w3_5;
            heap_bh6_w4_7_d1 <=  heap_bh6_w4_7;
            heap_bh6_w5_7_d1 <=  heap_bh6_w5_7;
            heap_bh6_w5_8_d1 <=  heap_bh6_w5_8;
            heap_bh6_w6_7_d1 <=  heap_bh6_w6_7;
            heap_bh6_w11_9_d1 <=  heap_bh6_w11_9;
            heap_bh6_w14_9_d1 <=  heap_bh6_w14_9;
            heap_bh6_w17_9_d1 <=  heap_bh6_w17_9;
            heap_bh6_w20_9_d1 <=  heap_bh6_w20_9;
            heap_bh6_w23_7_d1 <=  heap_bh6_w23_7;
            heap_bh6_w26_2_d1 <=  heap_bh6_w26_2;
            heap_bh6_w27_1_d1 <=  heap_bh6_w27_1;
            heap_bh6_w7_9_d1 <=  heap_bh6_w7_9;
            heap_bh6_w8_9_d1 <=  heap_bh6_w8_9;
            heap_bh6_w12_9_d1 <=  heap_bh6_w12_9;
            heap_bh6_w13_10_d1 <=  heap_bh6_w13_10;
            heap_bh6_w14_10_d1 <=  heap_bh6_w14_10;
            heap_bh6_w15_9_d1 <=  heap_bh6_w15_9;
            heap_bh6_w16_10_d1 <=  heap_bh6_w16_10;
            heap_bh6_w17_10_d1 <=  heap_bh6_w17_10;
            heap_bh6_w18_9_d1 <=  heap_bh6_w18_9;
            heap_bh6_w19_10_d1 <=  heap_bh6_w19_10;
            heap_bh6_w20_10_d1 <=  heap_bh6_w20_10;
            heap_bh6_w21_9_d1 <=  heap_bh6_w21_9;
            heap_bh6_w22_9_d1 <=  heap_bh6_w22_9;
            heap_bh6_w23_8_d1 <=  heap_bh6_w23_8;
            heap_bh6_w24_5_d1 <=  heap_bh6_w24_5;
            heap_bh6_w25_4_d1 <=  heap_bh6_w25_4;
            heap_bh6_w26_3_d1 <=  heap_bh6_w26_3;
            heap_bh6_w9_9_d1 <=  heap_bh6_w9_9;
            heap_bh6_w10_10_d1 <=  heap_bh6_w10_10;
            heap_bh6_w11_10_d1 <=  heap_bh6_w11_10;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- code generated by IntMultiplier::buildHeapLogicOnly()
   -- buildheaplogiconly called for lsbX=0 lsbY=0 msbX=22 msbY=5
   Xp_m5b7 <= XX_m5(21 downto 0) & "00";
   Yp_m5b7 <= YY_m5(4 downto 0) & "0";
   x_m5b7_0 <= Xp_m5b7(2 downto 0);
   x_m5b7_1 <= Xp_m5b7(5 downto 3);
   x_m5b7_2 <= Xp_m5b7(8 downto 6);
   x_m5b7_3 <= Xp_m5b7(11 downto 9);
   x_m5b7_4 <= Xp_m5b7(14 downto 12);
   x_m5b7_5 <= Xp_m5b7(17 downto 15);
   x_m5b7_6 <= Xp_m5b7(20 downto 18);
   x_m5b7_7 <= Xp_m5b7(23 downto 21);
   y_m5b7_0 <= Yp_m5b7(2 downto 0);
   y_m5b7_1 <= Yp_m5b7(5 downto 3);
   ----------------Synchro barrier, entering cycle 0----------------
   -- Partial product row number 0
   Y0X0_7_m5 <= y_m5b7_0 & x_m5b7_0;
   PP_m5_7X0Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X0_7_m5,
                 Y => PP7X0Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w0_0 <= PP7X0Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w1_0 <= PP7X0Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w2_0 <= PP7X0Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X1_7_m5 <= y_m5b7_0 & x_m5b7_1;
   PP_m5_7X1Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X1_7_m5,
                 Y => PP7X1Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w1_1 <= PP7X1Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w2_1 <= PP7X1Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w3_0 <= PP7X1Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w4_0 <= PP7X1Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_0 <= PP7X1Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X2_7_m5 <= y_m5b7_0 & x_m5b7_2;
   PP_m5_7X2Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X2_7_m5,
                 Y => PP7X2Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w4_1 <= PP7X2Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_1 <= PP7X2Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w6_0 <= PP7X2Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_0 <= PP7X2Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_0 <= PP7X2Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X3_7_m5 <= y_m5b7_0 & x_m5b7_3;
   PP_m5_7X3Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X3_7_m5,
                 Y => PP7X3Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w7_1 <= PP7X3Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_1 <= PP7X3Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w9_0 <= PP7X3Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_0 <= PP7X3Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_0 <= PP7X3Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X4_7_m5 <= y_m5b7_0 & x_m5b7_4;
   PP_m5_7X4Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X4_7_m5,
                 Y => PP7X4Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w10_1 <= PP7X4Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_1 <= PP7X4Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w12_0 <= PP7X4Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_0 <= PP7X4Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_0 <= PP7X4Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X5_7_m5 <= y_m5b7_0 & x_m5b7_5;
   PP_m5_7X5Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X5_7_m5,
                 Y => PP7X5Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w13_1 <= PP7X5Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_1 <= PP7X5Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_0 <= PP7X5Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_0 <= PP7X5Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_0 <= PP7X5Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X6_7_m5 <= y_m5b7_0 & x_m5b7_6;
   PP_m5_7X6Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X6_7_m5,
                 Y => PP7X6Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w16_1 <= PP7X6Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_1 <= PP7X6Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_0 <= PP7X6Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_0 <= PP7X6Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_0 <= PP7X6Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y0X7_7_m5 <= y_m5b7_0 & x_m5b7_7;
   PP_m5_7X7Y0_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y0X7_7_m5,
                 Y => PP7X7Y0_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w19_1 <= PP7X7Y0_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_1 <= PP7X7Y0_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_0 <= PP7X7Y0_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_0 <= PP7X7Y0_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_0 <= PP7X7Y0_m5(5); -- cycle= 0 cp= 5.9176e-10

   -- Partial product row number 1
   Y1X0_7_m5 <= y_m5b7_1 & x_m5b7_0;
   PP_m5_7X0Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X0_7_m5,
                 Y => PP7X0Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w2_2 <= PP7X0Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w3_1 <= PP7X0Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w4_2 <= PP7X0Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_2 <= PP7X0Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X1_7_m5 <= y_m5b7_1 & x_m5b7_1;
   PP_m5_7X1Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X1_7_m5,
                 Y => PP7X1Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w3_2 <= PP7X1Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w4_3 <= PP7X1Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w5_3 <= PP7X1Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w6_1 <= PP7X1Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_2 <= PP7X1Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_2 <= PP7X1Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X2_7_m5 <= y_m5b7_1 & x_m5b7_2;
   PP_m5_7X2Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X2_7_m5,
                 Y => PP7X2Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w6_2 <= PP7X2Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w7_3 <= PP7X2Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w8_3 <= PP7X2Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w9_1 <= PP7X2Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_2 <= PP7X2Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_2 <= PP7X2Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X3_7_m5 <= y_m5b7_1 & x_m5b7_3;
   PP_m5_7X3Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X3_7_m5,
                 Y => PP7X3Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w9_2 <= PP7X3Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w10_3 <= PP7X3Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w11_3 <= PP7X3Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w12_1 <= PP7X3Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_2 <= PP7X3Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_2 <= PP7X3Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X4_7_m5 <= y_m5b7_1 & x_m5b7_4;
   PP_m5_7X4Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X4_7_m5,
                 Y => PP7X4Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w12_2 <= PP7X4Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w13_3 <= PP7X4Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w14_3 <= PP7X4Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w15_1 <= PP7X4Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_2 <= PP7X4Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_2 <= PP7X4Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X5_7_m5 <= y_m5b7_1 & x_m5b7_5;
   PP_m5_7X5Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X5_7_m5,
                 Y => PP7X5Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w15_2 <= PP7X5Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w16_3 <= PP7X5Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w17_3 <= PP7X5Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w18_1 <= PP7X5Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_2 <= PP7X5Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_2 <= PP7X5Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X6_7_m5 <= y_m5b7_1 & x_m5b7_6;
   PP_m5_7X6Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X6_7_m5,
                 Y => PP7X6Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w18_2 <= PP7X6Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w19_3 <= PP7X6Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w20_3 <= PP7X6Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w21_1 <= PP7X6Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_1 <= PP7X6Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_1 <= PP7X6Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   Y1X7_7_m5 <= y_m5b7_1 & x_m5b7_7;
   PP_m5_7X7Y1_Tbl: SmallMultTableP3x3r6XuYu_F400_uid9_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => Y1X7_7_m5,
                 Y => PP7X7Y1_m5);
   -- Adding the relevant bits to the heap of bits
   heap_bh6_w21_2 <= PP7X7Y1_m5(0); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w22_2 <= PP7X7Y1_m5(1); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w23_2 <= PP7X7Y1_m5(2); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w24_0 <= PP7X7Y1_m5(3); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w25_0 <= PP7X7Y1_m5(4); -- cycle= 0 cp= 5.9176e-10
   heap_bh6_w26_0 <= PP7X7Y1_m5(5); -- cycle= 0 cp= 5.9176e-10

   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------
   DSP_bh6_ch0_0 <= std_logic_vector(unsigned("" & XX_m5(21 downto 0) & "00") * unsigned("" & YY_m5(21 downto 5) & ""));
   heap_bh6_w43_0 <= DSP_bh6_ch0_0(40); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w42_0 <= DSP_bh6_ch0_0(39); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w41_0 <= DSP_bh6_ch0_0(38); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w40_0 <= DSP_bh6_ch0_0(37); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w39_0 <= DSP_bh6_ch0_0(36); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w38_0 <= DSP_bh6_ch0_0(35); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w37_0 <= DSP_bh6_ch0_0(34); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w36_0 <= DSP_bh6_ch0_0(33); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w35_0 <= DSP_bh6_ch0_0(32); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w34_0 <= DSP_bh6_ch0_0(31); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w33_0 <= DSP_bh6_ch0_0(30); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w32_0 <= DSP_bh6_ch0_0(29); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w31_0 <= DSP_bh6_ch0_0(28); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w30_0 <= DSP_bh6_ch0_0(27); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w29_0 <= DSP_bh6_ch0_0(26); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w28_0 <= DSP_bh6_ch0_0(25); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w27_0 <= DSP_bh6_ch0_0(24); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w26_1 <= DSP_bh6_ch0_0(23); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w25_1 <= DSP_bh6_ch0_0(22); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w24_1 <= DSP_bh6_ch0_0(21); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w23_3 <= DSP_bh6_ch0_0(20); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w22_3 <= DSP_bh6_ch0_0(19); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w21_3 <= DSP_bh6_ch0_0(18); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w20_4 <= DSP_bh6_ch0_0(17); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w19_4 <= DSP_bh6_ch0_0(16); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w18_3 <= DSP_bh6_ch0_0(15); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w17_4 <= DSP_bh6_ch0_0(14); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w16_4 <= DSP_bh6_ch0_0(13); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w15_3 <= DSP_bh6_ch0_0(12); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w14_4 <= DSP_bh6_ch0_0(11); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w13_4 <= DSP_bh6_ch0_0(10); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w12_3 <= DSP_bh6_ch0_0(9); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w11_4 <= DSP_bh6_ch0_0(8); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w10_4 <= DSP_bh6_ch0_0(7); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w9_3 <= DSP_bh6_ch0_0(6); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w8_4 <= DSP_bh6_ch0_0(5); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w7_4 <= DSP_bh6_ch0_0(4); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w6_3 <= DSP_bh6_ch0_0(3); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w5_4 <= DSP_bh6_ch0_0(2); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w4_4 <= DSP_bh6_ch0_0(1); -- cycle= 0 cp= 2.387e-09
   heap_bh6_w3_3 <= DSP_bh6_ch0_0(0); -- cycle= 0 cp= 2.387e-09
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 0----------------
   tempR_bh6_0 <= heap_bh6_w0_0; -- already compressed

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_0_0 <= heap_bh6_w4_3 & heap_bh6_w4_2 & heap_bh6_w4_1 & heap_bh6_w4_0;
   CompressorIn_bh6_0_1(0) <= heap_bh6_w5_3;
   Compressor_bh6_0: Compressor_14_3_rndu
      port map ( R => CompressorOut_bh6_0_0   ,
                 X0 => CompressorIn_bh6_0_0,
                 X1 => CompressorIn_bh6_0_1);
   heap_bh6_w4_5 <= CompressorOut_bh6_0_0(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w5_5 <= CompressorOut_bh6_0_0(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w6_4 <= CompressorOut_bh6_0_0(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_1_2 <= heap_bh6_w7_3 & heap_bh6_w7_2 & heap_bh6_w7_1 & heap_bh6_w7_0;
   CompressorIn_bh6_1_3(0) <= heap_bh6_w8_3;
   Compressor_bh6_1: Compressor_14_3_rndu
      port map ( R => CompressorOut_bh6_1_1   ,
                 X0 => CompressorIn_bh6_1_2,
                 X1 => CompressorIn_bh6_1_3);
   heap_bh6_w7_5 <= CompressorOut_bh6_1_1(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w8_5 <= CompressorOut_bh6_1_1(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w9_4 <= CompressorOut_bh6_1_1(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_2_4 <= heap_bh6_w10_3 & heap_bh6_w10_2 & heap_bh6_w10_1 & heap_bh6_w10_0;
   CompressorIn_bh6_2_5(0) <= heap_bh6_w11_3;
   Compressor_bh6_2: Compressor_14_3_rndu
      port map ( R => CompressorOut_bh6_2_2   ,
                 X0 => CompressorIn_bh6_2_4,
                 X1 => CompressorIn_bh6_2_5);
   heap_bh6_w10_5 <= CompressorOut_bh6_2_2(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w11_5 <= CompressorOut_bh6_2_2(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w12_4 <= CompressorOut_bh6_2_2(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_3_6 <= heap_bh6_w13_3 & heap_bh6_w13_2 & heap_bh6_w13_1 & heap_bh6_w13_0;
   CompressorIn_bh6_3_7(0) <= heap_bh6_w14_3;
   Compressor_bh6_3: Compressor_14_3_rndu
      port map ( R => CompressorOut_bh6_3_3   ,
                 X0 => CompressorIn_bh6_3_6,
                 X1 => CompressorIn_bh6_3_7);
   heap_bh6_w13_5 <= CompressorOut_bh6_3_3(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w14_5 <= CompressorOut_bh6_3_3(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w15_4 <= CompressorOut_bh6_3_3(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_4_8 <= heap_bh6_w16_3 & heap_bh6_w16_2 & heap_bh6_w16_1 & heap_bh6_w16_0;
   CompressorIn_bh6_4_9(0) <= heap_bh6_w17_3;
   Compressor_bh6_4: Compressor_14_3_rndu
      port map ( R => CompressorOut_bh6_4_4   ,
                 X0 => CompressorIn_bh6_4_8,
                 X1 => CompressorIn_bh6_4_9);
   heap_bh6_w16_5 <= CompressorOut_bh6_4_4(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w17_5 <= CompressorOut_bh6_4_4(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w18_4 <= CompressorOut_bh6_4_4(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_5_10 <= heap_bh6_w19_3 & heap_bh6_w19_2 & heap_bh6_w19_1 & heap_bh6_w19_0;
   CompressorIn_bh6_5_11(0) <= heap_bh6_w20_3;
   Compressor_bh6_5: Compressor_14_3_rndu
      port map ( R => CompressorOut_bh6_5_5   ,
                 X0 => CompressorIn_bh6_5_10,
                 X1 => CompressorIn_bh6_5_11);
   heap_bh6_w19_5 <= CompressorOut_bh6_5_5(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w20_5 <= CompressorOut_bh6_5_5(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w21_4 <= CompressorOut_bh6_5_5(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_6_12 <= heap_bh6_w2_2 & heap_bh6_w2_1 & heap_bh6_w2_0;
   CompressorIn_bh6_6_13 <= heap_bh6_w3_2 & heap_bh6_w3_1;
   Compressor_bh6_6: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_6_6   ,
                 X0 => CompressorIn_bh6_6_12,
                 X1 => CompressorIn_bh6_6_13);
   heap_bh6_w2_3 <= CompressorOut_bh6_6_6(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w3_4 <= CompressorOut_bh6_6_6(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w4_6 <= CompressorOut_bh6_6_6(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_7_14 <= heap_bh6_w5_2 & heap_bh6_w5_1 & heap_bh6_w5_0;
   CompressorIn_bh6_7_15 <= heap_bh6_w6_2 & heap_bh6_w6_1;
   Compressor_bh6_7: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_7_7   ,
                 X0 => CompressorIn_bh6_7_14,
                 X1 => CompressorIn_bh6_7_15);
   heap_bh6_w5_6 <= CompressorOut_bh6_7_7(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w6_5 <= CompressorOut_bh6_7_7(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w7_6 <= CompressorOut_bh6_7_7(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_8_16 <= heap_bh6_w8_2 & heap_bh6_w8_1 & heap_bh6_w8_0;
   CompressorIn_bh6_8_17 <= heap_bh6_w9_2 & heap_bh6_w9_1;
   Compressor_bh6_8: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_8_8   ,
                 X0 => CompressorIn_bh6_8_16,
                 X1 => CompressorIn_bh6_8_17);
   heap_bh6_w8_6 <= CompressorOut_bh6_8_8(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w9_5 <= CompressorOut_bh6_8_8(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w10_6 <= CompressorOut_bh6_8_8(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_9_18 <= heap_bh6_w11_2 & heap_bh6_w11_1 & heap_bh6_w11_0;
   CompressorIn_bh6_9_19 <= heap_bh6_w12_2 & heap_bh6_w12_1;
   Compressor_bh6_9: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_9_9   ,
                 X0 => CompressorIn_bh6_9_18,
                 X1 => CompressorIn_bh6_9_19);
   heap_bh6_w11_6 <= CompressorOut_bh6_9_9(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w12_5 <= CompressorOut_bh6_9_9(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w13_6 <= CompressorOut_bh6_9_9(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_10_20 <= heap_bh6_w14_2 & heap_bh6_w14_1 & heap_bh6_w14_0;
   CompressorIn_bh6_10_21 <= heap_bh6_w15_2 & heap_bh6_w15_1;
   Compressor_bh6_10: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_10_10   ,
                 X0 => CompressorIn_bh6_10_20,
                 X1 => CompressorIn_bh6_10_21);
   heap_bh6_w14_6 <= CompressorOut_bh6_10_10(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w15_5 <= CompressorOut_bh6_10_10(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w16_6 <= CompressorOut_bh6_10_10(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_11_22 <= heap_bh6_w17_2 & heap_bh6_w17_1 & heap_bh6_w17_0;
   CompressorIn_bh6_11_23 <= heap_bh6_w18_2 & heap_bh6_w18_1;
   Compressor_bh6_11: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_11_11   ,
                 X0 => CompressorIn_bh6_11_22,
                 X1 => CompressorIn_bh6_11_23);
   heap_bh6_w17_6 <= CompressorOut_bh6_11_11(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w18_5 <= CompressorOut_bh6_11_11(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w19_6 <= CompressorOut_bh6_11_11(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_12_24 <= heap_bh6_w20_2 & heap_bh6_w20_1 & heap_bh6_w20_0;
   CompressorIn_bh6_12_25 <= heap_bh6_w21_2 & heap_bh6_w21_1;
   Compressor_bh6_12: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_12_12   ,
                 X0 => CompressorIn_bh6_12_24,
                 X1 => CompressorIn_bh6_12_25);
   heap_bh6_w20_6 <= CompressorOut_bh6_12_12(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w21_5 <= CompressorOut_bh6_12_12(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w22_4 <= CompressorOut_bh6_12_12(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_13_26 <= heap_bh6_w22_2 & heap_bh6_w22_1 & heap_bh6_w22_0;
   CompressorIn_bh6_13_27 <= heap_bh6_w23_2 & heap_bh6_w23_1;
   Compressor_bh6_13: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_13_13   ,
                 X0 => CompressorIn_bh6_13_26,
                 X1 => CompressorIn_bh6_13_27);
   heap_bh6_w22_5 <= CompressorOut_bh6_13_13(0); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w23_4 <= CompressorOut_bh6_13_13(1); -- cycle= 0 cp= 1.12248e-09
   heap_bh6_w24_2 <= CompressorOut_bh6_13_13(2); -- cycle= 0 cp= 1.12248e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_14_28 <= heap_bh6_w6_0 & heap_bh6_w6_5 & heap_bh6_w6_4;
   CompressorIn_bh6_14_29 <= heap_bh6_w7_6 & heap_bh6_w7_5;
   Compressor_bh6_14: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_14_14   ,
                 X0 => CompressorIn_bh6_14_28,
                 X1 => CompressorIn_bh6_14_29);
   heap_bh6_w6_6 <= CompressorOut_bh6_14_14(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w7_7 <= CompressorOut_bh6_14_14(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w8_7 <= CompressorOut_bh6_14_14(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_15_30 <= heap_bh6_w9_0 & heap_bh6_w9_5 & heap_bh6_w9_4;
   CompressorIn_bh6_15_31 <= heap_bh6_w10_6 & heap_bh6_w10_5;
   Compressor_bh6_15: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_15_15   ,
                 X0 => CompressorIn_bh6_15_30,
                 X1 => CompressorIn_bh6_15_31);
   heap_bh6_w9_6 <= CompressorOut_bh6_15_15(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w10_7 <= CompressorOut_bh6_15_15(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w11_7 <= CompressorOut_bh6_15_15(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_16_32 <= heap_bh6_w12_0 & heap_bh6_w12_5 & heap_bh6_w12_4;
   CompressorIn_bh6_16_33 <= heap_bh6_w13_6 & heap_bh6_w13_5;
   Compressor_bh6_16: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_16_16   ,
                 X0 => CompressorIn_bh6_16_32,
                 X1 => CompressorIn_bh6_16_33);
   heap_bh6_w12_6 <= CompressorOut_bh6_16_16(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w13_7 <= CompressorOut_bh6_16_16(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w14_7 <= CompressorOut_bh6_16_16(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_17_34 <= heap_bh6_w15_0 & heap_bh6_w15_5 & heap_bh6_w15_4;
   CompressorIn_bh6_17_35 <= heap_bh6_w16_6 & heap_bh6_w16_5;
   Compressor_bh6_17: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_17_17   ,
                 X0 => CompressorIn_bh6_17_34,
                 X1 => CompressorIn_bh6_17_35);
   heap_bh6_w15_6 <= CompressorOut_bh6_17_17(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w16_7 <= CompressorOut_bh6_17_17(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w17_7 <= CompressorOut_bh6_17_17(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_18_36 <= heap_bh6_w18_0 & heap_bh6_w18_5 & heap_bh6_w18_4;
   CompressorIn_bh6_18_37 <= heap_bh6_w19_6 & heap_bh6_w19_5;
   Compressor_bh6_18: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_18_18   ,
                 X0 => CompressorIn_bh6_18_36,
                 X1 => CompressorIn_bh6_18_37);
   heap_bh6_w18_6 <= CompressorOut_bh6_18_18(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w19_7 <= CompressorOut_bh6_18_18(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w20_7 <= CompressorOut_bh6_18_18(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   CompressorIn_bh6_19_38 <= heap_bh6_w21_0 & heap_bh6_w21_5 & heap_bh6_w21_4;
   CompressorIn_bh6_19_39 <= heap_bh6_w22_5 & heap_bh6_w22_4;
   Compressor_bh6_19: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_19_19   ,
                 X0 => CompressorIn_bh6_19_38,
                 X1 => CompressorIn_bh6_19_39);
   heap_bh6_w21_6 <= CompressorOut_bh6_19_19(0); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w22_6 <= CompressorOut_bh6_19_19(1); -- cycle= 0 cp= 1.6532e-09
   heap_bh6_w23_5 <= CompressorOut_bh6_19_19(2); -- cycle= 0 cp= 1.6532e-09

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_20_40 <= heap_bh6_w23_0_d1 & heap_bh6_w23_4_d1 & heap_bh6_w23_5_d1;
   CompressorIn_bh6_20_41 <= heap_bh6_w24_0_d1 & heap_bh6_w24_2_d1;
   Compressor_bh6_20: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_20_20   ,
                 X0 => CompressorIn_bh6_20_40,
                 X1 => CompressorIn_bh6_20_41);
   heap_bh6_w23_6 <= CompressorOut_bh6_20_20(0); -- cycle= 1 cp= 0
   heap_bh6_w24_3 <= CompressorOut_bh6_20_20(1); -- cycle= 1 cp= 0
   heap_bh6_w25_2 <= CompressorOut_bh6_20_20(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_21_42 <= heap_bh6_w8_6_d1 & heap_bh6_w8_5_d1 & heap_bh6_w8_7_d1;
   CompressorIn_bh6_21_43(0) <= heap_bh6_w9_6_d1;
   Compressor_bh6_21: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_21_21   ,
                 X0 => CompressorIn_bh6_21_42,
                 X1 => CompressorIn_bh6_21_43);
   heap_bh6_w8_8 <= CompressorOut_bh6_21_21(0); -- cycle= 1 cp= 0
   heap_bh6_w9_7 <= CompressorOut_bh6_21_21(1); -- cycle= 1 cp= 0
   heap_bh6_w10_8 <= CompressorOut_bh6_21_21(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_22_44 <= heap_bh6_w11_6_d1 & heap_bh6_w11_5_d1 & heap_bh6_w11_7_d1;
   CompressorIn_bh6_22_45(0) <= heap_bh6_w12_6_d1;
   Compressor_bh6_22: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_22_22   ,
                 X0 => CompressorIn_bh6_22_44,
                 X1 => CompressorIn_bh6_22_45);
   heap_bh6_w11_8 <= CompressorOut_bh6_22_22(0); -- cycle= 1 cp= 0
   heap_bh6_w12_7 <= CompressorOut_bh6_22_22(1); -- cycle= 1 cp= 0
   heap_bh6_w13_8 <= CompressorOut_bh6_22_22(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_23_46 <= heap_bh6_w14_6_d1 & heap_bh6_w14_5_d1 & heap_bh6_w14_7_d1;
   CompressorIn_bh6_23_47(0) <= heap_bh6_w15_6_d1;
   Compressor_bh6_23: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_23_23   ,
                 X0 => CompressorIn_bh6_23_46,
                 X1 => CompressorIn_bh6_23_47);
   heap_bh6_w14_8 <= CompressorOut_bh6_23_23(0); -- cycle= 1 cp= 0
   heap_bh6_w15_7 <= CompressorOut_bh6_23_23(1); -- cycle= 1 cp= 0
   heap_bh6_w16_8 <= CompressorOut_bh6_23_23(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_24_48 <= heap_bh6_w17_6_d1 & heap_bh6_w17_5_d1 & heap_bh6_w17_7_d1;
   CompressorIn_bh6_24_49(0) <= heap_bh6_w18_6_d1;
   Compressor_bh6_24: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_24_24   ,
                 X0 => CompressorIn_bh6_24_48,
                 X1 => CompressorIn_bh6_24_49);
   heap_bh6_w17_8 <= CompressorOut_bh6_24_24(0); -- cycle= 1 cp= 0
   heap_bh6_w18_7 <= CompressorOut_bh6_24_24(1); -- cycle= 1 cp= 0
   heap_bh6_w19_8 <= CompressorOut_bh6_24_24(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_25_50 <= heap_bh6_w20_6_d1 & heap_bh6_w20_5_d1 & heap_bh6_w20_7_d1;
   CompressorIn_bh6_25_51(0) <= heap_bh6_w21_6_d1;
   Compressor_bh6_25: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_25_25   ,
                 X0 => CompressorIn_bh6_25_50,
                 X1 => CompressorIn_bh6_25_51);
   heap_bh6_w20_8 <= CompressorOut_bh6_25_25(0); -- cycle= 1 cp= 0
   heap_bh6_w21_7 <= CompressorOut_bh6_25_25(1); -- cycle= 1 cp= 0
   heap_bh6_w22_7 <= CompressorOut_bh6_25_25(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_26_52 <= heap_bh6_w3_0_d1 & heap_bh6_w3_4_d1 & heap_bh6_w3_3_d1;
   CompressorIn_bh6_26_53 <= heap_bh6_w4_6_d1 & heap_bh6_w4_5_d1;
   Compressor_bh6_26: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_26_26   ,
                 X0 => CompressorIn_bh6_26_52,
                 X1 => CompressorIn_bh6_26_53);
   heap_bh6_w3_5 <= CompressorOut_bh6_26_26(0); -- cycle= 1 cp= 0
   heap_bh6_w4_7 <= CompressorOut_bh6_26_26(1); -- cycle= 1 cp= 0
   heap_bh6_w5_7 <= CompressorOut_bh6_26_26(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 0----------------
   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_27_54 <= heap_bh6_w5_6_d1 & heap_bh6_w5_5_d1 & heap_bh6_w5_4_d1;
   CompressorIn_bh6_27_55 <= heap_bh6_w6_6_d1 & heap_bh6_w6_3_d1;
   Compressor_bh6_27: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_27_27   ,
                 X0 => CompressorIn_bh6_27_54,
                 X1 => CompressorIn_bh6_27_55);
   heap_bh6_w5_8 <= CompressorOut_bh6_27_27(0); -- cycle= 1 cp= 0
   heap_bh6_w6_7 <= CompressorOut_bh6_27_27(1); -- cycle= 1 cp= 0
   heap_bh6_w7_8 <= CompressorOut_bh6_27_27(2); -- cycle= 1 cp= 0

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_28_56 <= heap_bh6_w10_7_d1 & heap_bh6_w10_4_d1 & heap_bh6_w10_8;
   CompressorIn_bh6_28_57 <= heap_bh6_w11_4_d1 & heap_bh6_w11_8;
   Compressor_bh6_28: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_28_28   ,
                 X0 => CompressorIn_bh6_28_56,
                 X1 => CompressorIn_bh6_28_57);
   heap_bh6_w10_9 <= CompressorOut_bh6_28_28(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w11_9 <= CompressorOut_bh6_28_28(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w12_8 <= CompressorOut_bh6_28_28(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_29_58 <= heap_bh6_w13_7_d1 & heap_bh6_w13_4_d1 & heap_bh6_w13_8;
   CompressorIn_bh6_29_59 <= heap_bh6_w14_4_d1 & heap_bh6_w14_8;
   Compressor_bh6_29: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_29_29   ,
                 X0 => CompressorIn_bh6_29_58,
                 X1 => CompressorIn_bh6_29_59);
   heap_bh6_w13_9 <= CompressorOut_bh6_29_29(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w14_9 <= CompressorOut_bh6_29_29(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w15_8 <= CompressorOut_bh6_29_29(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_30_60 <= heap_bh6_w16_7_d1 & heap_bh6_w16_4_d1 & heap_bh6_w16_8;
   CompressorIn_bh6_30_61 <= heap_bh6_w17_4_d1 & heap_bh6_w17_8;
   Compressor_bh6_30: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_30_30   ,
                 X0 => CompressorIn_bh6_30_60,
                 X1 => CompressorIn_bh6_30_61);
   heap_bh6_w16_9 <= CompressorOut_bh6_30_30(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w17_9 <= CompressorOut_bh6_30_30(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w18_8 <= CompressorOut_bh6_30_30(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_31_62 <= heap_bh6_w19_7_d1 & heap_bh6_w19_4_d1 & heap_bh6_w19_8;
   CompressorIn_bh6_31_63 <= heap_bh6_w20_4_d1 & heap_bh6_w20_8;
   Compressor_bh6_31: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_31_31   ,
                 X0 => CompressorIn_bh6_31_62,
                 X1 => CompressorIn_bh6_31_63);
   heap_bh6_w19_9 <= CompressorOut_bh6_31_31(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w20_9 <= CompressorOut_bh6_31_31(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w21_8 <= CompressorOut_bh6_31_31(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_32_64 <= heap_bh6_w22_6_d1 & heap_bh6_w22_3_d1 & heap_bh6_w22_7;
   CompressorIn_bh6_32_65 <= heap_bh6_w23_3_d1 & heap_bh6_w23_6;
   Compressor_bh6_32: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_32_32   ,
                 X0 => CompressorIn_bh6_32_64,
                 X1 => CompressorIn_bh6_32_65);
   heap_bh6_w22_8 <= CompressorOut_bh6_32_32(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w23_7 <= CompressorOut_bh6_32_32(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w24_4 <= CompressorOut_bh6_32_32(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_33_66 <= heap_bh6_w25_0_d1 & heap_bh6_w25_1_d1 & heap_bh6_w25_2;
   CompressorIn_bh6_33_67 <= heap_bh6_w26_0_d1 & heap_bh6_w26_1_d1;
   Compressor_bh6_33: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_33_33   ,
                 X0 => CompressorIn_bh6_33_66,
                 X1 => CompressorIn_bh6_33_67);
   heap_bh6_w25_3 <= CompressorOut_bh6_33_33(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w26_2 <= CompressorOut_bh6_33_33(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w27_1 <= CompressorOut_bh6_33_33(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_34_68 <= heap_bh6_w7_7_d1 & heap_bh6_w7_4_d1 & heap_bh6_w7_8;
   CompressorIn_bh6_34_69 <= heap_bh6_w8_4_d1 & heap_bh6_w8_8;
   Compressor_bh6_34: Compressor_23_3_rndu
      port map ( R => CompressorOut_bh6_34_34   ,
                 X0 => CompressorIn_bh6_34_68,
                 X1 => CompressorIn_bh6_34_69);
   heap_bh6_w7_9 <= CompressorOut_bh6_34_34(0); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w8_9 <= CompressorOut_bh6_34_34(1); -- cycle= 1 cp= 5.3072e-10
   heap_bh6_w9_8 <= CompressorOut_bh6_34_34(2); -- cycle= 1 cp= 5.3072e-10

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_35_70 <= heap_bh6_w12_3_d1 & heap_bh6_w12_7 & heap_bh6_w12_8;
   CompressorIn_bh6_35_71(0) <= heap_bh6_w13_9;
   Compressor_bh6_35: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_35_35   ,
                 X0 => CompressorIn_bh6_35_70,
                 X1 => CompressorIn_bh6_35_71);
   heap_bh6_w12_9 <= CompressorOut_bh6_35_35(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w13_10 <= CompressorOut_bh6_35_35(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w14_10 <= CompressorOut_bh6_35_35(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_36_72 <= heap_bh6_w15_3_d1 & heap_bh6_w15_7 & heap_bh6_w15_8;
   CompressorIn_bh6_36_73(0) <= heap_bh6_w16_9;
   Compressor_bh6_36: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_36_36   ,
                 X0 => CompressorIn_bh6_36_72,
                 X1 => CompressorIn_bh6_36_73);
   heap_bh6_w15_9 <= CompressorOut_bh6_36_36(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w16_10 <= CompressorOut_bh6_36_36(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w17_10 <= CompressorOut_bh6_36_36(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_37_74 <= heap_bh6_w18_3_d1 & heap_bh6_w18_7 & heap_bh6_w18_8;
   CompressorIn_bh6_37_75(0) <= heap_bh6_w19_9;
   Compressor_bh6_37: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_37_37   ,
                 X0 => CompressorIn_bh6_37_74,
                 X1 => CompressorIn_bh6_37_75);
   heap_bh6_w18_9 <= CompressorOut_bh6_37_37(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w19_10 <= CompressorOut_bh6_37_37(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w20_10 <= CompressorOut_bh6_37_37(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_38_76 <= heap_bh6_w21_3_d1 & heap_bh6_w21_7 & heap_bh6_w21_8;
   CompressorIn_bh6_38_77(0) <= heap_bh6_w22_8;
   Compressor_bh6_38: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_38_38   ,
                 X0 => CompressorIn_bh6_38_76,
                 X1 => CompressorIn_bh6_38_77);
   heap_bh6_w21_9 <= CompressorOut_bh6_38_38(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w22_9 <= CompressorOut_bh6_38_38(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w23_8 <= CompressorOut_bh6_38_38(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_39_78 <= heap_bh6_w24_1_d1 & heap_bh6_w24_3 & heap_bh6_w24_4;
   CompressorIn_bh6_39_79(0) <= heap_bh6_w25_3;
   Compressor_bh6_39: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_39_39   ,
                 X0 => CompressorIn_bh6_39_78,
                 X1 => CompressorIn_bh6_39_79);
   heap_bh6_w24_5 <= CompressorOut_bh6_39_39(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w25_4 <= CompressorOut_bh6_39_39(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w26_3 <= CompressorOut_bh6_39_39(2); -- cycle= 1 cp= 1.06144e-09

   ----------------Synchro barrier, entering cycle 1----------------
   CompressorIn_bh6_40_80 <= heap_bh6_w9_3_d1 & heap_bh6_w9_7 & heap_bh6_w9_8;
   CompressorIn_bh6_40_81(0) <= heap_bh6_w10_9;
   Compressor_bh6_40: Compressor_13_3_rndu
      port map ( R => CompressorOut_bh6_40_40   ,
                 X0 => CompressorIn_bh6_40_80,
                 X1 => CompressorIn_bh6_40_81);
   heap_bh6_w9_9 <= CompressorOut_bh6_40_40(0); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w10_10 <= CompressorOut_bh6_40_40(1); -- cycle= 1 cp= 1.06144e-09
   heap_bh6_w11_10 <= CompressorOut_bh6_40_40(2); -- cycle= 1 cp= 1.06144e-09
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   finalAdderIn0_bh6 <= "0" & heap_bh6_w43_0_d2 & heap_bh6_w42_0_d2 & heap_bh6_w41_0_d2 & heap_bh6_w40_0_d2 & heap_bh6_w39_0_d2 & heap_bh6_w38_0_d2 & heap_bh6_w37_0_d2 & heap_bh6_w36_0_d2 & heap_bh6_w35_0_d2 & heap_bh6_w34_0_d2 & heap_bh6_w33_0_d2 & heap_bh6_w32_0_d2 & heap_bh6_w31_0_d2 & heap_bh6_w30_0_d2 & heap_bh6_w29_0_d2 & heap_bh6_w28_0_d2 & heap_bh6_w27_0_d2 & heap_bh6_w26_2_d1 & heap_bh6_w25_4_d1 & heap_bh6_w24_5_d1 & heap_bh6_w23_7_d1 & heap_bh6_w22_9_d1 & heap_bh6_w21_9_d1 & heap_bh6_w20_9_d1 & heap_bh6_w19_10_d1 & heap_bh6_w18_9_d1 & heap_bh6_w17_9_d1 & heap_bh6_w16_10_d1 & heap_bh6_w15_9_d1 & heap_bh6_w14_9_d1 & heap_bh6_w13_10_d1 & heap_bh6_w12_9_d1 & heap_bh6_w11_9_d1 & heap_bh6_w10_10_d1 & heap_bh6_w9_9_d1 & heap_bh6_w8_9_d1 & heap_bh6_w7_9_d1 & heap_bh6_w6_7_d1 & heap_bh6_w5_8_d1 & heap_bh6_w4_4_d2 & heap_bh6_w3_5_d1 & heap_bh6_w2_3_d2 & heap_bh6_w1_1_d2;
   finalAdderIn1_bh6 <= "0" & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & heap_bh6_w27_1_d1 & heap_bh6_w26_3_d1 & '0' & '0' & heap_bh6_w23_8_d1 & '0' & '0' & heap_bh6_w20_10_d1 & '0' & '0' & heap_bh6_w17_10_d1 & '0' & '0' & heap_bh6_w14_10_d1 & '0' & '0' & heap_bh6_w11_10_d1 & '0' & '0' & '0' & '0' & '0' & heap_bh6_w5_7_d1 & heap_bh6_w4_7_d1 & '0' & '0' & heap_bh6_w1_0_d2;
   finalAdderCin_bh6 <= '0';
   Adder_final6_0: IntAdder_44_f400_uid132_rndu  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => finalAdderCin_bh6,
                 R => finalAdderOut_bh6   ,
                 X => finalAdderIn0_bh6,
                 Y => finalAdderIn1_bh6);
   ----------------Synchro barrier, entering cycle 3----------------
   -- concatenate all the compressed chunks
   CompressionResult6 <= finalAdderOut_bh6 & tempR_bh6_0_d3;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(43 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_34_f400_uid142_rndu
--                     (IntAdderClassical_34_F400_uid144)
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

entity IntAdder_34_f400_uid142_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(33 downto 0);
          Y : in  std_logic_vector(33 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntAdder_34_f400_uid142_rndu is
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
--                     FPMult_11_21_F400_uid2_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 4 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPMult_11_21_F400_uid2_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+21+2 downto 0);
          Y : in  std_logic_vector(11+21+2 downto 0);
          R : out  std_logic_vector(11+21+2 downto 0)   );
end entity;

architecture arch of FPMult_11_21_F400_uid2_rndu is
   component IntMultiplier_UsingDSP_22_22_44_unsigned_F400_uid4_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(21 downto 0);
             Y : in  std_logic_vector(21 downto 0);
             R : out  std_logic_vector(43 downto 0)   );
   end component;

   component IntAdder_34_f400_uid142_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(33 downto 0);
             Y : in  std_logic_vector(33 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(33 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2, sign_d3, sign_d4 :  std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(12 downto 0);
signal bias, bias_d1 :  std_logic_vector(12 downto 0);
signal expSum, expSum_d1, expSum_d2 :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(21 downto 0);
signal sigY :  std_logic_vector(21 downto 0);
signal sigProd :  std_logic_vector(43 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2, exc_d3, exc_d4 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(43 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(33 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(33 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            sign_d2 <=  sign_d1;
            sign_d3 <=  sign_d2;
            sign_d4 <=  sign_d3;
            expSumPreSub_d1 <=  expSumPreSub;
            bias_d1 <=  bias;
            expSum_d1 <=  expSum;
            expSum_d2 <=  expSum_d1;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            exc_d3 <=  exc_d2;
            exc_d4 <=  exc_d3;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
         end if;
      end process;
   sign <= X(32) xor Y(32);
   expX <= X(31 downto 21);
   expY <= Y(31 downto 21);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(20 downto 0);
   sigY <= "1" & Y(20 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_22_22_44_unsigned_F400_uid4_rndu  -- pipelineDepth=3 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 3----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(34 downto 33) & Y(34 downto 33);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   ----------------Synchro barrier, entering cycle 3----------------
   norm <= sigProd(43);
   -- exponent update
   expPostNorm <= expSum_d2 + ("000000000000" & norm);
   ----------------Synchro barrier, entering cycle 3----------------
   -- significand normalization shift
   sigProdExt <= sigProd(42 downto 0) & "0" when norm='1' else
                         sigProd(41 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(43 downto 23);
   sticky <= sigProdExt(22);
   ----------------Synchro barrier, entering cycle 4----------------
   guard <= '0' when sigProdExt_d1(21 downto 0)="0000000000000000000000" else '1';
   round <= '1' when (sign_d4='0' and (sticky_d1='1' or guard='1')) else '0';
   RoundingAdder: IntAdder_34_f400_uid142_rndu  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "0000000000000000000000000000000000");
   with expSigPostRound(33 downto 32) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d4 select 
   finalExc <= exc_d4 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d4 & expSigPostRound(31 downto 0);
end architecture;

