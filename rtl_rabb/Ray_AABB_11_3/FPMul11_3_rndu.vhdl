--------------------------------------------------------------------------------
--                     SmallMultTableP4x4r8XuYu_F400_uid8_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP4x4r8XuYu_F400_uid8_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(7 downto 0);
          Y : out  std_logic_vector(7 downto 0)   );
end entity;

architecture arch of SmallMultTableP4x4r8XuYu_F400_uid8_rndu is
signal TableOut :  std_logic_vector(7 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
  with X select TableOut <= 
   "00000000" when "00000000",
   "00000000" when "00000001",
   "00000000" when "00000010",
   "00000000" when "00000011",
   "00000000" when "00000100",
   "00000000" when "00000101",
   "00000000" when "00000110",
   "00000000" when "00000111",
   "00000000" when "00001000",
   "00000000" when "00001001",
   "00000000" when "00001010",
   "00000000" when "00001011",
   "00000000" when "00001100",
   "00000000" when "00001101",
   "00000000" when "00001110",
   "00000000" when "00001111",
   "00000000" when "00010000",
   "00000001" when "00010001",
   "00000010" when "00010010",
   "00000011" when "00010011",
   "00000100" when "00010100",
   "00000101" when "00010101",
   "00000110" when "00010110",
   "00000111" when "00010111",
   "00001000" when "00011000",
   "00001001" when "00011001",
   "00001010" when "00011010",
   "00001011" when "00011011",
   "00001100" when "00011100",
   "00001101" when "00011101",
   "00001110" when "00011110",
   "00001111" when "00011111",
   "00000000" when "00100000",
   "00000010" when "00100001",
   "00000100" when "00100010",
   "00000110" when "00100011",
   "00001000" when "00100100",
   "00001010" when "00100101",
   "00001100" when "00100110",
   "00001110" when "00100111",
   "00010000" when "00101000",
   "00010010" when "00101001",
   "00010100" when "00101010",
   "00010110" when "00101011",
   "00011000" when "00101100",
   "00011010" when "00101101",
   "00011100" when "00101110",
   "00011110" when "00101111",
   "00000000" when "00110000",
   "00000011" when "00110001",
   "00000110" when "00110010",
   "00001001" when "00110011",
   "00001100" when "00110100",
   "00001111" when "00110101",
   "00010010" when "00110110",
   "00010101" when "00110111",
   "00011000" when "00111000",
   "00011011" when "00111001",
   "00011110" when "00111010",
   "00100001" when "00111011",
   "00100100" when "00111100",
   "00100111" when "00111101",
   "00101010" when "00111110",
   "00101101" when "00111111",
   "00000000" when "01000000",
   "00000100" when "01000001",
   "00001000" when "01000010",
   "00001100" when "01000011",
   "00010000" when "01000100",
   "00010100" when "01000101",
   "00011000" when "01000110",
   "00011100" when "01000111",
   "00100000" when "01001000",
   "00100100" when "01001001",
   "00101000" when "01001010",
   "00101100" when "01001011",
   "00110000" when "01001100",
   "00110100" when "01001101",
   "00111000" when "01001110",
   "00111100" when "01001111",
   "00000000" when "01010000",
   "00000101" when "01010001",
   "00001010" when "01010010",
   "00001111" when "01010011",
   "00010100" when "01010100",
   "00011001" when "01010101",
   "00011110" when "01010110",
   "00100011" when "01010111",
   "00101000" when "01011000",
   "00101101" when "01011001",
   "00110010" when "01011010",
   "00110111" when "01011011",
   "00111100" when "01011100",
   "01000001" when "01011101",
   "01000110" when "01011110",
   "01001011" when "01011111",
   "00000000" when "01100000",
   "00000110" when "01100001",
   "00001100" when "01100010",
   "00010010" when "01100011",
   "00011000" when "01100100",
   "00011110" when "01100101",
   "00100100" when "01100110",
   "00101010" when "01100111",
   "00110000" when "01101000",
   "00110110" when "01101001",
   "00111100" when "01101010",
   "01000010" when "01101011",
   "01001000" when "01101100",
   "01001110" when "01101101",
   "01010100" when "01101110",
   "01011010" when "01101111",
   "00000000" when "01110000",
   "00000111" when "01110001",
   "00001110" when "01110010",
   "00010101" when "01110011",
   "00011100" when "01110100",
   "00100011" when "01110101",
   "00101010" when "01110110",
   "00110001" when "01110111",
   "00111000" when "01111000",
   "00111111" when "01111001",
   "01000110" when "01111010",
   "01001101" when "01111011",
   "01010100" when "01111100",
   "01011011" when "01111101",
   "01100010" when "01111110",
   "01101001" when "01111111",
   "00000000" when "10000000",
   "00001000" when "10000001",
   "00010000" when "10000010",
   "00011000" when "10000011",
   "00100000" when "10000100",
   "00101000" when "10000101",
   "00110000" when "10000110",
   "00111000" when "10000111",
   "01000000" when "10001000",
   "01001000" when "10001001",
   "01010000" when "10001010",
   "01011000" when "10001011",
   "01100000" when "10001100",
   "01101000" when "10001101",
   "01110000" when "10001110",
   "01111000" when "10001111",
   "00000000" when "10010000",
   "00001001" when "10010001",
   "00010010" when "10010010",
   "00011011" when "10010011",
   "00100100" when "10010100",
   "00101101" when "10010101",
   "00110110" when "10010110",
   "00111111" when "10010111",
   "01001000" when "10011000",
   "01010001" when "10011001",
   "01011010" when "10011010",
   "01100011" when "10011011",
   "01101100" when "10011100",
   "01110101" when "10011101",
   "01111110" when "10011110",
   "10000111" when "10011111",
   "00000000" when "10100000",
   "00001010" when "10100001",
   "00010100" when "10100010",
   "00011110" when "10100011",
   "00101000" when "10100100",
   "00110010" when "10100101",
   "00111100" when "10100110",
   "01000110" when "10100111",
   "01010000" when "10101000",
   "01011010" when "10101001",
   "01100100" when "10101010",
   "01101110" when "10101011",
   "01111000" when "10101100",
   "10000010" when "10101101",
   "10001100" when "10101110",
   "10010110" when "10101111",
   "00000000" when "10110000",
   "00001011" when "10110001",
   "00010110" when "10110010",
   "00100001" when "10110011",
   "00101100" when "10110100",
   "00110111" when "10110101",
   "01000010" when "10110110",
   "01001101" when "10110111",
   "01011000" when "10111000",
   "01100011" when "10111001",
   "01101110" when "10111010",
   "01111001" when "10111011",
   "10000100" when "10111100",
   "10001111" when "10111101",
   "10011010" when "10111110",
   "10100101" when "10111111",
   "00000000" when "11000000",
   "00001100" when "11000001",
   "00011000" when "11000010",
   "00100100" when "11000011",
   "00110000" when "11000100",
   "00111100" when "11000101",
   "01001000" when "11000110",
   "01010100" when "11000111",
   "01100000" when "11001000",
   "01101100" when "11001001",
   "01111000" when "11001010",
   "10000100" when "11001011",
   "10010000" when "11001100",
   "10011100" when "11001101",
   "10101000" when "11001110",
   "10110100" when "11001111",
   "00000000" when "11010000",
   "00001101" when "11010001",
   "00011010" when "11010010",
   "00100111" when "11010011",
   "00110100" when "11010100",
   "01000001" when "11010101",
   "01001110" when "11010110",
   "01011011" when "11010111",
   "01101000" when "11011000",
   "01110101" when "11011001",
   "10000010" when "11011010",
   "10001111" when "11011011",
   "10011100" when "11011100",
   "10101001" when "11011101",
   "10110110" when "11011110",
   "11000011" when "11011111",
   "00000000" when "11100000",
   "00001110" when "11100001",
   "00011100" when "11100010",
   "00101010" when "11100011",
   "00111000" when "11100100",
   "01000110" when "11100101",
   "01010100" when "11100110",
   "01100010" when "11100111",
   "01110000" when "11101000",
   "01111110" when "11101001",
   "10001100" when "11101010",
   "10011010" when "11101011",
   "10101000" when "11101100",
   "10110110" when "11101101",
   "11000100" when "11101110",
   "11010010" when "11101111",
   "00000000" when "11110000",
   "00001111" when "11110001",
   "00011110" when "11110010",
   "00101101" when "11110011",
   "00111100" when "11110100",
   "01001011" when "11110101",
   "01011010" when "11110110",
   "01101001" when "11110111",
   "01111000" when "11111000",
   "10000111" when "11111001",
   "10010110" when "11111010",
   "10100101" when "11111011",
   "10110100" when "11111100",
   "11000011" when "11111101",
   "11010010" when "11111110",
   "11100001" when "11111111",
   "--------" when others;
    Y <= TableOut;
end architecture;

--------------------------------------------------------------------------------
--              IntMultiplier_UsingDSP_4_4_8_unsigned_F400_uid4_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_4_4_8_unsigned_F400_uid4_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(3 downto 0);
          Y : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(7 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_4_4_8_unsigned_F400_uid4_rndu is
   component SmallMultTableP4x4r8XuYu_F400_uid8_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(7 downto 0);
             Y : out  std_logic_vector(7 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(3 downto 0);
signal YY_m5 :  std_logic_vector(3 downto 0);
signal XY_m5 :  std_logic_vector(7 downto 0);
signal RR_m5 :  std_logic_vector(7 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal CompressionResult6 :  std_logic_vector(7 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP4x4r8XuYu_F400_uid8_rndu: component is "yes";
attribute rom_style of SmallMultTableP4x4r8XuYu_F400_uid8_rndu: component is "distributed";
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   -- Ne pouvant me fier a mon raisonnement, j'ai appris par coeur le résultat de toutes les multiplications possibles
   XY_m5 <= YY_m5 & XX_m5;
   multTable: SmallMultTableP4x4r8XuYu_F400_uid8_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 X => XY_m5,
                 Y => RR_m5);
   heap_bh6_w0_0 <= RR_m5(0); -- cycle= 0 cp= 0
   heap_bh6_w1_0 <= RR_m5(1); -- cycle= 0 cp= 0
   heap_bh6_w2_0 <= RR_m5(2); -- cycle= 0 cp= 0
   heap_bh6_w3_0 <= RR_m5(3); -- cycle= 0 cp= 0
   heap_bh6_w4_0 <= RR_m5(4); -- cycle= 0 cp= 0
   heap_bh6_w5_0 <= RR_m5(5); -- cycle= 0 cp= 0
   heap_bh6_w6_0 <= RR_m5(6); -- cycle= 0 cp= 0
   heap_bh6_w7_0 <= RR_m5(7); -- cycle= 0 cp= 0
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   CompressionResult6 <= heap_bh6_w7_0 & heap_bh6_w6_0 & heap_bh6_w5_0 & heap_bh6_w4_0 & heap_bh6_w3_0 & heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(7 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_16_f400_uid14_rndu
--                     (IntAdderClassical_16_F400_uid16)
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

entity IntAdder_16_f400_uid14_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(15 downto 0);
          Y : in  std_logic_vector(15 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(15 downto 0)   );
end entity;

architecture arch of IntAdder_16_f400_uid14_rndu is
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
--                      FPMult_11_3_F400_uid2_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin 2008-2011
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPMult_11_3_F400_uid2_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+3+2 downto 0);
          Y : in  std_logic_vector(11+3+2 downto 0);
          R : out  std_logic_vector(11+3+2 downto 0)   );
end entity;

architecture arch of FPMult_11_3_F400_uid2_rndu is
   component IntMultiplier_UsingDSP_4_4_8_unsigned_F400_uid4_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(3 downto 0);
             Y : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(7 downto 0)   );
   end component;

   component IntAdder_16_f400_uid14_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(15 downto 0);
             Y : in  std_logic_vector(15 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(15 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2 :  std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(12 downto 0);
signal bias, bias_d1 :  std_logic_vector(12 downto 0);
signal expSum :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(3 downto 0);
signal sigY :  std_logic_vector(3 downto 0);
signal sigProd, sigProd_d1 :  std_logic_vector(7 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(7 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(15 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(15 downto 0);
signal excPostNorm :  std_logic_vector(1 downto 0);
signal finalExc :  std_logic_vector(1 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            sign_d1 <=  sign;
            sign_d2 <=  sign_d1;
            expSumPreSub_d1 <=  expSumPreSub;
            bias_d1 <=  bias;
            sigProd_d1 <=  sigProd;
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
         end if;
      end process;
   sign <= X(14) xor Y(14);
   expX <= X(13 downto 3);
   expY <= Y(13 downto 3);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(2 downto 0);
   sigY <= "1" & Y(2 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_4_4_8_unsigned_F400_uid4_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(16 downto 15) & Y(16 downto 15);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm <= sigProd_d1(7);
   -- exponent update
   expPostNorm <= expSum + ("000000000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd_d1(6 downto 0) & "0" when norm='1' else
                         sigProd_d1(5 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(7 downto 5);
   sticky <= sigProdExt(4);
   ----------------Synchro barrier, entering cycle 2----------------
   guard <= '0' when sigProdExt_d1(3 downto 0)="0000" else '1';
   round <= '1' when (sign_d2='0' and (sticky_d1='1' or guard='1')) else '0'  ;
   RoundingAdder: IntAdder_16_f400_uid14_rndu  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "0000000000000000");
   with expSigPostRound(15 downto 14) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d2 select 
   finalExc <= exc_d2 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d2 & expSigPostRound(13 downto 0);
end architecture;

