--------------------------------------------------------------------------------
--                     SmallMultTableP3x3r6XuYu_F400_uid8
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin (2007-2012)
--------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all;
library work;
entity SmallMultTableP3x3r6XuYu_F400_uid8 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(5 downto 0);
          Y : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of SmallMultTableP3x3r6XuYu_F400_uid8 is
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
--              IntMultiplier_UsingDSP_3_3_6_unsigned_F400_uid4
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

entity IntMultiplier_UsingDSP_3_3_6_unsigned_F400_uid4 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(2 downto 0);
          Y : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(5 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_3_3_6_unsigned_F400_uid4 is
   component SmallMultTableP3x3r6XuYu_F400_uid8 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(5 downto 0);
             Y : out  std_logic_vector(5 downto 0)   );
   end component;

signal XX_m5 :  std_logic_vector(2 downto 0);
signal YY_m5 :  std_logic_vector(2 downto 0);
signal XY_m5 :  std_logic_vector(5 downto 0);
signal RR_m5 :  std_logic_vector(5 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal CompressionResult6 :  std_logic_vector(5 downto 0);
attribute rom_extract: string;
attribute rom_style: string;
attribute rom_extract of SmallMultTableP3x3r6XuYu_F400_uid8: component is "yes";
attribute rom_style of SmallMultTableP3x3r6XuYu_F400_uid8: component is "distributed";
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
   multTable: SmallMultTableP3x3r6XuYu_F400_uid8  -- pipelineDepth=0 maxInDelay=0
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
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 0----------------
   CompressionResult6 <= heap_bh6_w5_0 & heap_bh6_w4_0 & heap_bh6_w3_0 & heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(5 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_15_f400_uid14
--                     (IntAdderClassical_15_F400_uid16)
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

entity IntAdder_15_f400_uid14 is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(14 downto 0);
          Y : in  std_logic_vector(14 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(14 downto 0)   );
end entity;

architecture arch of IntAdder_15_f400_uid14 is
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
--                      FPMult_11_2_F400_uid2_rndd
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

entity FPMult_11_2_F400_uid2_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+2+2 downto 0);
          Y : in  std_logic_vector(11+2+2 downto 0);
          R : out  std_logic_vector(11+2+2 downto 0)   );
end entity;

architecture arch of FPMult_11_2_F400_uid2_rndd is
   component IntMultiplier_UsingDSP_3_3_6_unsigned_F400_uid4 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(2 downto 0);
             Y : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(5 downto 0)   );
   end component;

   component IntAdder_15_f400_uid14 is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(14 downto 0);
             Y : in  std_logic_vector(14 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(14 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2 :  std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(12 downto 0);
signal bias, bias_d1 :  std_logic_vector(12 downto 0);
signal expSum :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(2 downto 0);
signal sigY :  std_logic_vector(2 downto 0);
signal sigProd, sigProd_d1 :  std_logic_vector(5 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(5 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(14 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(14 downto 0);
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
   sign <= X(13) xor Y(13);
   expX <= X(12 downto 2);
   expY <= Y(12 downto 2);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(1 downto 0);
   sigY <= "1" & Y(1 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_3_3_6_unsigned_F400_uid4  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(15 downto 14) & Y(15 downto 14);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm <= sigProd_d1(5);
   -- exponent update
   expPostNorm <= expSum + ("000000000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd_d1(4 downto 0) & "0" when norm='1' else
                         sigProd_d1(3 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(5 downto 4);
   sticky <= sigProdExt(3);
   ----------------Synchro barrier, entering cycle 2----------------
   guard <= '0' when sigProdExt_d1(2 downto 0)="000" else '1';
   round <= '1' when (sign_d2='1' and (sticky_d1='1' or guard='1')) else '0'  ;
   RoundingAdder: IntAdder_15_f400_uid14  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "000000000000000");
   with expSigPostRound(14 downto 13) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d2 select 
   finalExc <= exc_d2 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d2 & expSigPostRound(12 downto 0);
end architecture;

