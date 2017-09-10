--------------------------------------------------------------------------------
--                     RightShifter_4_by_max_6_F400_uid4_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_4_by_max_6_F400_uid4_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(3 downto 0);
          S : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(9 downto 0)   );
end entity;

architecture arch of RightShifter_4_by_max_6_F400_uid4_rndu is
signal level0 :  std_logic_vector(3 downto 0);
signal ps :  std_logic_vector(2 downto 0);
signal level1 :  std_logic_vector(4 downto 0);
signal level2 :  std_logic_vector(6 downto 0);
signal level3 :  std_logic_vector(10 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
         end if;
      end process;
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   level3<=  (3 downto 0 => '0') & level2 when ps(2) = '1' else    level2 & (3 downto 0 => '0');
   R <= level3(10 downto 1);
end architecture;

--------------------------------------------------------------------------------
--                            IntAdder_7_f400_uid8_rndu
--                      (IntAdderClassical_7_F400_uid10)
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

entity IntAdder_7_f400_uid8_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(6 downto 0);
          Y : in  std_logic_vector(6 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(6 downto 0)   );
end entity;

architecture arch of IntAdder_7_f400_uid8_rndu is
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
--                  LZCShifter_8_to_8_counting_16_F400_uid16_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_8_to_8_counting_16_F400_uid16_rndu is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(7 downto 0);
          Count : out  std_logic_vector(3 downto 0);
          O : out  std_logic_vector(7 downto 0)   );
end entity;

architecture arch of LZCShifter_8_to_8_counting_16_F400_uid16_rndu is
signal level4 :  std_logic_vector(7 downto 0);
signal count3, count3_d1, count3_d2 :  std_logic;
signal level3, level3_d1 :  std_logic_vector(7 downto 0);
signal count2, count2_d1 :  std_logic;
signal level2 :  std_logic_vector(7 downto 0);
signal count1, count1_d1 :  std_logic;
signal level1, level1_d1 :  std_logic_vector(7 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(7 downto 0);
signal sCount :  std_logic_vector(3 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            count3_d1 <=  count3;
            count3_d2 <=  count3_d1;
            level3_d1 <=  level3;
            count2_d1 <=  count2;
            count1_d1 <=  count1;
            level1_d1 <=  level1;
         end if;
      end process;
   level4 <= I ;
   count3<= '1' when level4(7 downto 0) = (7 downto 0=>'0') else '0';
   level3<= level4(7 downto 0) when count3='0' else (7 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 1----------------
   count2<= '1' when level3_d1(7 downto 4) = (7 downto 4=>'0') else '0';
   level2<= level3_d1(7 downto 0) when count2='0' else level3_d1(3 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(7 downto 6) = (7 downto 6=>'0') else '0';
   level1<= level2(7 downto 0) when count1='0' else level2(5 downto 0) & (1 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 2----------------
   count0<= '1' when level1_d1(7 downto 7) = (7 downto 7=>'0') else '0';
   level0<= level1_d1(7 downto 0) when count0='0' else level1_d1(6 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count3_d2 & count2_d1 & count1_d1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_17_f400_uid20_rndu
--                     (IntAdderClassical_17_F400_uid22)
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

entity IntAdder_17_f400_uid20_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(16 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(16 downto 0)   );
end entity;

architecture arch of IntAdder_17_f400_uid20_rndu is
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
--                            FPSub_11_3_F400_uid2_rndu
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 5 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPSub_11_3_F400_uid2_rndu is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+3+2 downto 0);
          Y : in  std_logic_vector(11+3+2 downto 0);
          R : out  std_logic_vector(11+3+2 downto 0)   );
end entity;

architecture arch of FPSub_11_3_F400_uid2_rndu is
   component RightShifter_4_by_max_6_F400_uid4_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(3 downto 0);
             S : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(9 downto 0)   );
   end component;

   component IntAdder_7_f400_uid8_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(6 downto 0);
             Y : in  std_logic_vector(6 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(6 downto 0)   );
   end component;

   component LZCShifter_8_to_8_counting_16_F400_uid16_rndu is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(7 downto 0);
             Count : out  std_logic_vector(3 downto 0);
             O : out  std_logic_vector(7 downto 0)   );
   end component;

   component IntAdder_17_f400_uid20_rndu is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(16 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(16 downto 0)   );
   end component;

signal excExpFracX :  std_logic_vector(15 downto 0);
signal excExpFracY :  std_logic_vector(15 downto 0);
signal eXmeY :  std_logic_vector(11 downto 0);
signal eYmeX :  std_logic_vector(11 downto 0);
signal swap :  std_logic;
signal mY :  std_logic_vector(16 downto 0);
signal newX, newX_d1, newX_d2 :  std_logic_vector(16 downto 0);
signal newY, newY_d1 :  std_logic_vector(16 downto 0);
signal expX, expX_d1, expX_d2 :  std_logic_vector(10 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY, excY_d1 :  std_logic_vector(1 downto 0);
signal signX, signX_d1 :  std_logic;
signal signY :  std_logic;
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5 :  std_logic;
signal sXsYExnXY, sXsYExnXY_d1 :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY :  std_logic_vector(3 downto 0);
signal excRt, excRt_d1, excRt_d2, excRt_d3, excRt_d4 :  std_logic_vector(1 downto 0);
signal signR, signR_d1, signR_d2, signR_d3, signR_d4 :  std_logic;
signal expDiff, expDiff_d1 :  std_logic_vector(11 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal :  std_logic_vector(2 downto 0);
signal shiftedFracY, shiftedFracY_d1 :  std_logic_vector(9 downto 0);
signal sticky :  std_logic;
signal fracYfar :  std_logic_vector(6 downto 0);
signal EffSubVector :  std_logic_vector(6 downto 0);
signal fracYfarXorOp :  std_logic_vector(6 downto 0);
signal fracXfar :  std_logic_vector(6 downto 0);
signal cInAddFar :  std_logic;
signal fracAddResult :  std_logic_vector(6 downto 0);
signal fracGRS :  std_logic_vector(7 downto 0);
signal extendedExpInc, extendedExpInc_d1, extendedExpInc_d2 :  std_logic_vector(12 downto 0);
signal nZerosNew :  std_logic_vector(3 downto 0);
signal shiftedFrac :  std_logic_vector(7 downto 0);
signal updatedExp :  std_logic_vector(12 downto 0);
signal eqdiffsign, eqdiffsign_d1 :  std_logic;
signal expFrac,expFrac1 :  std_logic_vector(16 downto 0);
signal stk :  std_logic;
signal rnd :  std_logic;
signal grd :  std_logic;
signal lsb :  std_logic;
signal addToRoundBit :  std_logic;
signal RoundedExpFrac :  std_logic_vector(16 downto 0);
signal upExc, upExc_d1 :  std_logic_vector(1 downto 0);
signal fracR, fracR_d1 :  std_logic_vector(2 downto 0);
signal expR, expR_d1 :  std_logic_vector(10 downto 0);
signal exExpExc :  std_logic_vector(3 downto 0);
signal excRt2 :  std_logic_vector(1 downto 0);
signal excR :  std_logic_vector(1 downto 0);
signal signR2 :  std_logic;
signal computedR :  std_logic_vector(16 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newY_d1 <=  newY;
            expX_d1 <=  expX;
            expX_d2 <=  expX_d1;
            excY_d1 <=  excY;
            signX_d1 <=  signX;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            sXsYExnXY_d1 <=  sXsYExnXY;
            excRt_d1 <=  excRt;
            excRt_d2 <=  excRt_d1;
            excRt_d3 <=  excRt_d2;
            excRt_d4 <=  excRt_d3;
            signR_d1 <=  signR;
            signR_d2 <=  signR_d1;
            signR_d3 <=  signR_d2;
            signR_d4 <=  signR_d3;
            expDiff_d1 <=  expDiff;
            shiftedFracY_d1 <=  shiftedFracY;
            extendedExpInc_d1 <=  extendedExpInc;
            extendedExpInc_d2 <=  extendedExpInc_d1;
            eqdiffsign_d1 <=  eqdiffsign;
            upExc_d1 <=  upExc;
            fracR_d1 <=  fracR;
            expR_d1 <=  expR;
         end if;
      end process;
-- Exponent difference and swap  --
   excExpFracX <= X(16 downto 15) & X(13 downto 0);
   excExpFracY <= Y(16 downto 15) & Y(13 downto 0);
   eXmeY <= ("0" & X(13 downto 3)) - ("0" & Y(13 downto 3));
   eYmeX <= ("0" & Y(13 downto 3)) - ("0" & X(13 downto 3));
   swap <= '0' when excExpFracX >= excExpFracY else '1';
   mY <= Y(16 downto 15) & not(Y(14)) & Y(13 downto 0);
   newX <= X when swap = '0' else mY;
   newY <= mY when swap = '0' else X;
   expX<= newX(13 downto 3);
   excX<= newX(16 downto 15);
   excY<= newY(16 downto 15);
   signX<= newX(14);
   signY<= newY(14);
   EffSub <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   sdExnXY <= excX & excY;
   ----------------Synchro barrier, entering cycle 1----------------
   fracY <= "0000" when excY_d1="00" else ('1' & newY_d1(2 downto 0));
   with sXsYExnXY_d1 select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR<= '0' when (sXsYExnXY_d1="100000" or sXsYExnXY_d1="010000") else signX_d1;
   ---------------- cycle 0----------------
   expDiff <= eXmeY when swap = '0' else eYmeX;
   ----------------Synchro barrier, entering cycle 1----------------
   shiftedOut <= '1' when (expDiff_d1 >= 5) else '0';
   shiftVal <= expDiff_d1(2 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(6,3) ;
   RightShifterComponent: RightShifter_4_by_max_6_F400_uid4_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal,
                 X => fracY);
   ----------------Synchro barrier, entering cycle 2----------------
   sticky <= '0' when (shiftedFracY_d1(3 downto 0)=CONV_STD_LOGIC_VECTOR(0,4)) else '1';
   ---------------- cycle 1----------------
   ----------------Synchro barrier, entering cycle 2----------------
   fracYfar <= "0" & shiftedFracY_d1(9 downto 4);
   EffSubVector <= (6 downto 0 => EffSub_d2);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d2(2 downto 0)) & "00";
   cInAddFar <= EffSub_d2 and not sticky;
   fracAdder: IntAdder_7_f400_uid8_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   fracGRS<= fracAddResult & sticky; 
   extendedExpInc<= ("00" & expX_d2) + '1';
   LZC_component: LZCShifter_8_to_8_counting_16_F400_uid16_rndu  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 4----------------
   updatedExp <= extendedExpInc_d2 - ("000000000" & nZerosNew);
   eqdiffsign <= '1' when nZerosNew="1111" else '0';
   expFrac<= updatedExp & shiftedFrac(6 downto 3);
   ---------------- cycle 4----------------
   stk<= shiftedFrac(1) or shiftedFrac(0);
   rnd<= shiftedFrac(2);
   grd<= shiftedFrac(3);
   lsb<= shiftedFrac(4);
   addToRoundBit<= '1' when (signR_d3='0' and (grd='1' or rnd='1' or stk='1'))  else '0';
   expFrac1<= updatedExp & shiftedFrac(6 downto 4) & addToRoundBit;
   roundingAdder: IntAdder_17_f400_uid20_rndu  -- pipelineDepth=0 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBit,
                 R => RoundedExpFrac,
                 X => expFrac1,
                 Y => "00000000000000000");
   ---------------- cycle 4----------------
   upExc <= RoundedExpFrac(16 downto 15);
   fracR <= RoundedExpFrac(3 downto 1);
   expR <= RoundedExpFrac(14 downto 4);
   ----------------Synchro barrier, entering cycle 5----------------
   exExpExc <= upExc_d1 & excRt_d4;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   excR <= "00" when (eqdiffsign_d1='1' and EffSub_d5='1') else excRt2;
   signR2 <= '0' when (eqdiffsign_d1='1' and EffSub_d5='1') else signR_d4;
   computedR <= excR & signR2 & expR_d1 & fracR_d1;
   R <= computedR;
end architecture;

