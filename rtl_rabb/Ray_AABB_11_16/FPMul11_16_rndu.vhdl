--------------------------------------------------------------------------------
--             IntMultiplier_UsingDSP_17_17_34_unsigned_F400_uid4_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_UsingDSP_17_17_34_unsigned_F400_uid4_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(16 downto 0);
          R : out  std_logic_vector(33 downto 0)   );
end entity;

architecture arch of IntMultiplier_UsingDSP_17_17_34_unsigned_F400_uid4_rndu is
signal XX_m5, XX_m5_d1 :  std_logic_vector(16 downto 0);
signal YY_m5, YY_m5_d1 :  std_logic_vector(16 downto 0);
signal DSP_Res_3 :  std_logic_vector(42 downto 0);
signal heap_bh6_w0_0 :  std_logic;
signal heap_bh6_w1_0 :  std_logic;
signal heap_bh6_w2_0 :  std_logic;
signal heap_bh6_w3_0 :  std_logic;
signal heap_bh6_w4_0 :  std_logic;
signal heap_bh6_w5_0 :  std_logic;
signal heap_bh6_w6_0 :  std_logic;
signal heap_bh6_w7_0 :  std_logic;
signal heap_bh6_w8_0 :  std_logic;
signal heap_bh6_w9_0 :  std_logic;
signal heap_bh6_w10_0 :  std_logic;
signal heap_bh6_w11_0 :  std_logic;
signal heap_bh6_w12_0 :  std_logic;
signal heap_bh6_w13_0 :  std_logic;
signal heap_bh6_w14_0 :  std_logic;
signal heap_bh6_w15_0 :  std_logic;
signal heap_bh6_w16_0 :  std_logic;
signal heap_bh6_w17_0 :  std_logic;
signal heap_bh6_w18_0 :  std_logic;
signal heap_bh6_w19_0 :  std_logic;
signal heap_bh6_w20_0 :  std_logic;
signal heap_bh6_w21_0 :  std_logic;
signal heap_bh6_w22_0 :  std_logic;
signal heap_bh6_w23_0 :  std_logic;
signal heap_bh6_w24_0 :  std_logic;
signal heap_bh6_w25_0 :  std_logic;
signal heap_bh6_w26_0 :  std_logic;
signal heap_bh6_w27_0 :  std_logic;
signal heap_bh6_w28_0 :  std_logic;
signal heap_bh6_w29_0 :  std_logic;
signal heap_bh6_w30_0 :  std_logic;
signal heap_bh6_w31_0 :  std_logic;
signal heap_bh6_w32_0 :  std_logic;
signal heap_bh6_w33_0 :  std_logic;
signal CompressionResult6 :  std_logic_vector(33 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            XX_m5_d1 <=  XX_m5;
            YY_m5_d1 <=  YY_m5;
         end if;
      end process;
   XX_m5 <= X ;
   YY_m5 <= Y ;
   ----------------Synchro barrier, entering cycle 1----------------
   DSP_Res_3 <=  std_logic_vector(unsigned'(unsigned("00000000" & XX_m5_d1) * unsigned("0" & YY_m5_d1)));
   heap_bh6_w0_0 <= DSP_Res_3(0); -- cycle= 1 cp= 0
   heap_bh6_w1_0 <= DSP_Res_3(1); -- cycle= 1 cp= 0
   heap_bh6_w2_0 <= DSP_Res_3(2); -- cycle= 1 cp= 0
   heap_bh6_w3_0 <= DSP_Res_3(3); -- cycle= 1 cp= 0
   heap_bh6_w4_0 <= DSP_Res_3(4); -- cycle= 1 cp= 0
   heap_bh6_w5_0 <= DSP_Res_3(5); -- cycle= 1 cp= 0
   heap_bh6_w6_0 <= DSP_Res_3(6); -- cycle= 1 cp= 0
   heap_bh6_w7_0 <= DSP_Res_3(7); -- cycle= 1 cp= 0
   heap_bh6_w8_0 <= DSP_Res_3(8); -- cycle= 1 cp= 0
   heap_bh6_w9_0 <= DSP_Res_3(9); -- cycle= 1 cp= 0
   heap_bh6_w10_0 <= DSP_Res_3(10); -- cycle= 1 cp= 0
   heap_bh6_w11_0 <= DSP_Res_3(11); -- cycle= 1 cp= 0
   heap_bh6_w12_0 <= DSP_Res_3(12); -- cycle= 1 cp= 0
   heap_bh6_w13_0 <= DSP_Res_3(13); -- cycle= 1 cp= 0
   heap_bh6_w14_0 <= DSP_Res_3(14); -- cycle= 1 cp= 0
   heap_bh6_w15_0 <= DSP_Res_3(15); -- cycle= 1 cp= 0
   heap_bh6_w16_0 <= DSP_Res_3(16); -- cycle= 1 cp= 0
   heap_bh6_w17_0 <= DSP_Res_3(17); -- cycle= 1 cp= 0
   heap_bh6_w18_0 <= DSP_Res_3(18); -- cycle= 1 cp= 0
   heap_bh6_w19_0 <= DSP_Res_3(19); -- cycle= 1 cp= 0
   heap_bh6_w20_0 <= DSP_Res_3(20); -- cycle= 1 cp= 0
   heap_bh6_w21_0 <= DSP_Res_3(21); -- cycle= 1 cp= 0
   heap_bh6_w22_0 <= DSP_Res_3(22); -- cycle= 1 cp= 0
   heap_bh6_w23_0 <= DSP_Res_3(23); -- cycle= 1 cp= 0
   heap_bh6_w24_0 <= DSP_Res_3(24); -- cycle= 1 cp= 0
   heap_bh6_w25_0 <= DSP_Res_3(25); -- cycle= 1 cp= 0
   heap_bh6_w26_0 <= DSP_Res_3(26); -- cycle= 1 cp= 0
   heap_bh6_w27_0 <= DSP_Res_3(27); -- cycle= 1 cp= 0
   heap_bh6_w28_0 <= DSP_Res_3(28); -- cycle= 1 cp= 0
   heap_bh6_w29_0 <= DSP_Res_3(29); -- cycle= 1 cp= 0
   heap_bh6_w30_0 <= DSP_Res_3(30); -- cycle= 1 cp= 0
   heap_bh6_w31_0 <= DSP_Res_3(31); -- cycle= 1 cp= 0
   heap_bh6_w32_0 <= DSP_Res_3(32); -- cycle= 1 cp= 0
   heap_bh6_w33_0 <= DSP_Res_3(33); -- cycle= 1 cp= 0
   
   -- Beginning of code generated by BitHeap::generateCompressorVHDL
   -- code generated by BitHeap::generateSupertileVHDL()
   ----------------Synchro barrier, entering cycle 0----------------

   -- Adding the constant bits
      -- All the constant bits are zero, nothing to add

   ----------------Synchro barrier, entering cycle 1----------------
   CompressionResult6 <= heap_bh6_w33_0 & heap_bh6_w32_0 & heap_bh6_w31_0 & heap_bh6_w30_0 & heap_bh6_w29_0 & heap_bh6_w28_0 & heap_bh6_w27_0 & heap_bh6_w26_0 & heap_bh6_w25_0 & heap_bh6_w24_0 & heap_bh6_w23_0 & heap_bh6_w22_0 & heap_bh6_w21_0 & heap_bh6_w20_0 & heap_bh6_w19_0 & heap_bh6_w18_0 & heap_bh6_w17_0 & heap_bh6_w16_0 & heap_bh6_w15_0 & heap_bh6_w14_0 & heap_bh6_w13_0 & heap_bh6_w12_0 & heap_bh6_w11_0 & heap_bh6_w10_0 & heap_bh6_w9_0 & heap_bh6_w8_0 & heap_bh6_w7_0 & heap_bh6_w6_0 & heap_bh6_w5_0 & heap_bh6_w4_0 & heap_bh6_w3_0 & heap_bh6_w2_0 & heap_bh6_w1_0 & heap_bh6_w0_0;
   -- End of code generated by BitHeap::generateCompressorVHDL
   R <= CompressionResult6(33 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_29_f400_uid10_rndu
--                     (IntAdderClassical_29_F400_uid12)
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

entity IntAdder_29_f400_uid10_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(28 downto 0);
          Y : in  std_logic_vector(28 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(28 downto 0)   );
end entity;

architecture arch of IntAdder_29_f400_uid10_rndu is
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
--                     FPMult_11_16_F400_uid2_rndu
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

entity FPMult_11_16_F400_uid2_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+16+2 downto 0);
          Y : in  std_logic_vector(11+16+2 downto 0);
          R : out  std_logic_vector(11+16+2 downto 0)   );
end entity;

architecture arch of FPMult_11_16_F400_uid2_rndu is
   component IntMultiplier_UsingDSP_17_17_34_unsigned_F400_uid4_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(16 downto 0);
             R : out  std_logic_vector(33 downto 0)   );
   end component;

   component IntAdder_29_f400_uid10_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(28 downto 0);
             Y : in  std_logic_vector(28 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(28 downto 0)   );
   end component;

signal sign, sign_d1, sign_d2 :  std_logic;
signal expX :  std_logic_vector(10 downto 0);
signal expY :  std_logic_vector(10 downto 0);
signal expSumPreSub, expSumPreSub_d1 :  std_logic_vector(12 downto 0);
signal bias, bias_d1 :  std_logic_vector(12 downto 0);
signal expSum :  std_logic_vector(12 downto 0);
signal sigX :  std_logic_vector(16 downto 0);
signal sigY :  std_logic_vector(16 downto 0);
signal sigProd :  std_logic_vector(33 downto 0);
signal excSel :  std_logic_vector(3 downto 0);
signal exc, exc_d1, exc_d2 :  std_logic_vector(1 downto 0);
signal norm :  std_logic;
signal expPostNorm :  std_logic_vector(12 downto 0);
signal sigProdExt, sigProdExt_d1 :  std_logic_vector(33 downto 0);
signal expSig, expSig_d1 :  std_logic_vector(28 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal guard :  std_logic;
signal round :  std_logic;
signal expSigPostRound :  std_logic_vector(28 downto 0);
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
            exc_d1 <=  exc;
            exc_d2 <=  exc_d1;
            sigProdExt_d1 <=  sigProdExt;
            expSig_d1 <=  expSig;
            sticky_d1 <=  sticky;
         end if;
      end process;
   sign <= X(27) xor Y(27);
   expX <= X(26 downto 16);
   expY <= Y(26 downto 16);
   expSumPreSub <= ("00" & expX) + ("00" & expY);
   bias <= CONV_STD_LOGIC_VECTOR(1023,13);
   ----------------Synchro barrier, entering cycle 1----------------
   expSum <= expSumPreSub_d1 - bias_d1;
   ----------------Synchro barrier, entering cycle 0----------------
   sigX <= "1" & X(15 downto 0);
   sigY <= "1" & Y(15 downto 0);
   SignificandMultiplication: IntMultiplier_UsingDSP_17_17_34_unsigned_F400_uid4_rndu  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => sigProd,
                 X => sigX,
                 Y => sigY);
   ----------------Synchro barrier, entering cycle 1----------------
   ----------------Synchro barrier, entering cycle 0----------------
   excSel <= X(29 downto 28) & Y(29 downto 28);
   with excSel select 
   exc <= "00" when  "0000" | "0001" | "0100", 
          "01" when "0101",
          "10" when "0110" | "1001" | "1010" ,
          "11" when others;
   norm <= sigProd(33);
   -- exponent update
   expPostNorm <= expSum + ("000000000000" & norm);
   -- significand normalization shift
   sigProdExt <= sigProd(32 downto 0) & "0" when norm='1' else
                         sigProd(31 downto 0) & "00";
   expSig <= expPostNorm & sigProdExt(33 downto 18);
   sticky <= sigProdExt(17);
   ----------------Synchro barrier, entering cycle 2----------------
   guard <= '0' when sigProdExt_d1(16 downto 0)="00000000000000000" else '1';
   round <= '1' when (sign_d2='0' and (sticky_d1='1' or guard='1')) else '0';
   RoundingAdder: IntAdder_29_f400_uid10_rndu  -- pipelineDepth=0 maxInDelay=5.3072e-10
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => round,
                 R => expSigPostRound   ,
                 X => expSig_d1,
                 Y => "00000000000000000000000000000");
   with expSigPostRound(28 downto 27) select
   excPostNorm <=  "01"  when  "00",
                               "10"             when "01", 
                               "00"             when "11"|"10",
                               "11"             when others;
   with exc_d2 select 
   finalExc <= exc_d2 when  "11"|"10"|"00",
                       excPostNorm when others; 
   R <= finalExc & sign_d2 & expSigPostRound(26 downto 0);
end architecture;

