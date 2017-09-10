--------------------------------------------------------------------------------
--                           IntAdder_66_f400_uid4_rndd
--                     (IntAdderAlternative_66_F400_uid8)
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

entity IntAdder_66_f400_uid4_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(65 downto 0);
          Y : in  std_logic_vector(65 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(65 downto 0)   );
end entity;

architecture arch of IntAdder_66_f400_uid4_rndd is
signal s_sum_l0_idx0 :  std_logic_vector(42 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(24 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(41 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(23 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(24 downto 0);
signal sum_l1_idx1 :  std_logic_vector(23 downto 0);
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
   s_sum_l0_idx1 <= ( "0" & X(65 downto 42)) + ( "0" & Y(65 downto 42));
   sum_l0_idx0 <= s_sum_l0_idx0(41 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(42 downto 42);
   sum_l0_idx1 <= s_sum_l0_idx1(23 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(24 downto 24);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(23 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(24 downto 24);
   R <= sum_l1_idx1(23 downto 0) & sum_l0_idx0_d1(41 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                    RightShifter_53_by_max_55_F400_uid12_rndd
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2011)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter_53_by_max_55_F400_uid12_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(52 downto 0);
          S : in  std_logic_vector(5 downto 0);
          R : out  std_logic_vector(107 downto 0)   );
end entity;

architecture arch of RightShifter_53_by_max_55_F400_uid12_rndd is
signal level0 :  std_logic_vector(52 downto 0);
signal ps, ps_d1, ps_d2 :  std_logic_vector(5 downto 0);
signal level1 :  std_logic_vector(53 downto 0);
signal level2, level2_d1 :  std_logic_vector(55 downto 0);
signal level3 :  std_logic_vector(59 downto 0);
signal level4, level4_d1 :  std_logic_vector(67 downto 0);
signal level5 :  std_logic_vector(83 downto 0);
signal level6 :  std_logic_vector(115 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            ps_d2 <=  ps_d1;
            level2_d1 <=  level2;
            level4_d1 <=  level4;
         end if;
      end process;
   level0<= X;
   ps<= S;
   level1<=  (0 downto 0 => '0') & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   level2<=  (1 downto 0 => '0') & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 1----------------
   level3<=  (3 downto 0 => '0') & level2_d1 when ps_d1(2) = '1' else    level2_d1 & (3 downto 0 => '0');
   level4<=  (7 downto 0 => '0') & level3 when ps_d1(3) = '1' else    level3 & (7 downto 0 => '0');
   ----------------Synchro barrier, entering cycle 2----------------
   level5<=  (15 downto 0 => '0') & level4_d1 when ps_d2(4) = '1' else    level4_d1 & (15 downto 0 => '0');
   level6<=  (31 downto 0 => '0') & level5 when ps_d2(5) = '1' else    level5 & (31 downto 0 => '0');
   R <= level6(115 downto 8);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_56_f400_uid16_rndd
--                    (IntAdderAlternative_56_F400_uid20)
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

entity IntAdder_56_f400_uid16_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(55 downto 0);
          Y : in  std_logic_vector(55 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(55 downto 0)   );
end entity;

architecture arch of IntAdder_56_f400_uid16_rndd is
signal s_sum_l0_idx0 :  std_logic_vector(42 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(14 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(41 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(13 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(14 downto 0);
signal sum_l1_idx1 :  std_logic_vector(13 downto 0);
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
   s_sum_l0_idx1 <= ( "0" & X(55 downto 42)) + ( "0" & Y(55 downto 42));
   sum_l0_idx0 <= s_sum_l0_idx0(41 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(42 downto 42);
   sum_l0_idx1 <= s_sum_l0_idx1(13 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(14 downto 14);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(13 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(14 downto 14);
   R <= sum_l1_idx1(13 downto 0) & sum_l0_idx0_d1(41 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                 LZCShifter_57_to_57_counting_64_F400_uid24_rndd
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, Bogdan Pasca (2007)
--------------------------------------------------------------------------------
-- Pipeline depth: 3 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity LZCShifter_57_to_57_counting_64_F400_uid24_rndd is
   port ( clk, rst : in std_logic;
          I : in  std_logic_vector(56 downto 0);
          Count : out  std_logic_vector(5 downto 0);
          O : out  std_logic_vector(56 downto 0)   );
end entity;

architecture arch of LZCShifter_57_to_57_counting_64_F400_uid24_rndd is
signal level6 :  std_logic_vector(56 downto 0);
signal count5, count5_d1, count5_d2, count5_d3 :  std_logic;
signal level5, level5_d1 :  std_logic_vector(56 downto 0);
signal count4, count4_d1, count4_d2 :  std_logic;
signal level4 :  std_logic_vector(56 downto 0);
signal count3, count3_d1, count3_d2 :  std_logic;
signal level3, level3_d1 :  std_logic_vector(56 downto 0);
signal count2, count2_d1 :  std_logic;
signal level2 :  std_logic_vector(56 downto 0);
signal count1, count1_d1 :  std_logic;
signal level1, level1_d1 :  std_logic_vector(56 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(56 downto 0);
signal sCount :  std_logic_vector(5 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            count5_d1 <=  count5;
            count5_d2 <=  count5_d1;
            count5_d3 <=  count5_d2;
            level5_d1 <=  level5;
            count4_d1 <=  count4;
            count4_d2 <=  count4_d1;
            count3_d1 <=  count3;
            count3_d2 <=  count3_d1;
            level3_d1 <=  level3;
            count2_d1 <=  count2;
            count1_d1 <=  count1;
            level1_d1 <=  level1;
         end if;
      end process;
   level6 <= I ;
   count5<= '1' when level6(56 downto 25) = (56 downto 25=>'0') else '0';
   level5<= level6(56 downto 0) when count5='0' else level6(24 downto 0) & (31 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 1----------------
   count4<= '1' when level5_d1(56 downto 41) = (56 downto 41=>'0') else '0';
   level4<= level5_d1(56 downto 0) when count4='0' else level5_d1(40 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(56 downto 49) = (56 downto 49=>'0') else '0';
   level3<= level4(56 downto 0) when count3='0' else level4(48 downto 0) & (7 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 2----------------
   count2<= '1' when level3_d1(56 downto 53) = (56 downto 53=>'0') else '0';
   level2<= level3_d1(56 downto 0) when count2='0' else level3_d1(52 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(56 downto 55) = (56 downto 55=>'0') else '0';
   level1<= level2(56 downto 0) when count1='0' else level2(54 downto 0) & (1 downto 0 => '0');

   ----------------Synchro barrier, entering cycle 3----------------
   count0<= '1' when level1_d1(56 downto 56) = (56 downto 56=>'0') else '0';
   level0<= level1_d1(56 downto 0) when count0='0' else level1_d1(55 downto 0) & (0 downto 0 => '0');

   O <= level0;
   sCount <= count5_d3 & count4_d2 & count3_d2 & count2_d1 & count1_d1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_66_f400_uid28_rndd
--                    (IntAdderAlternative_66_F400_uid32)
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

entity IntAdder_66_f400_uid28_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(65 downto 0);
          Y : in  std_logic_vector(65 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(65 downto 0)   );
end entity;

architecture arch of IntAdder_66_f400_uid28_rndd is
signal s_sum_l0_idx0 :  std_logic_vector(42 downto 0);
signal s_sum_l0_idx1, s_sum_l0_idx1_d1 :  std_logic_vector(24 downto 0);
signal sum_l0_idx0, sum_l0_idx0_d1 :  std_logic_vector(41 downto 0);
signal c_l0_idx0, c_l0_idx0_d1 :  std_logic_vector(0 downto 0);
signal sum_l0_idx1 :  std_logic_vector(23 downto 0);
signal c_l0_idx1 :  std_logic_vector(0 downto 0);
signal s_sum_l1_idx1 :  std_logic_vector(24 downto 0);
signal sum_l1_idx1 :  std_logic_vector(23 downto 0);
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
   s_sum_l0_idx1 <= ( "0" & X(65 downto 42)) + ( "0" & Y(65 downto 42));
   sum_l0_idx0 <= s_sum_l0_idx0(41 downto 0);
   c_l0_idx0 <= s_sum_l0_idx0(42 downto 42);
   sum_l0_idx1 <= s_sum_l0_idx1(23 downto 0);
   c_l0_idx1 <= s_sum_l0_idx1(24 downto 24);
   ----------------Synchro barrier, entering cycle 1----------------
   s_sum_l1_idx1 <=  s_sum_l0_idx1_d1 + c_l0_idx0_d1(0 downto 0);
   sum_l1_idx1 <= s_sum_l1_idx1(23 downto 0);
   c_l1_idx1 <= s_sum_l1_idx1(24 downto 24);
   R <= sum_l1_idx1(23 downto 0) & sum_l0_idx0_d1(41 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           FPSub_11_52_F400_uid2_rndd
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2010)
--------------------------------------------------------------------------------
-- Pipeline depth: 11 cycles

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity FPSub_11_52_F400_uid2_rndd is
   port ( clk, rst : in std_logic;
          X : in  std_logic_vector(11+52+2 downto 0);
          Y : in  std_logic_vector(11+52+2 downto 0);
          R : out  std_logic_vector(11+52+2 downto 0)   );
end entity;

architecture arch of FPSub_11_52_F400_uid2_rndd is
   component IntAdder_66_f400_uid4_rndd is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(65 downto 0);
             Y : in  std_logic_vector(65 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(65 downto 0)   );
   end component;

   component RightShifter_53_by_max_55_F400_uid12_rndd is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(52 downto 0);
             S : in  std_logic_vector(5 downto 0);
             R : out  std_logic_vector(107 downto 0)   );
   end component;

   component IntAdder_56_f400_uid16_rndd is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(55 downto 0);
             Y : in  std_logic_vector(55 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(55 downto 0)   );
   end component;

   component LZCShifter_57_to_57_counting_64_F400_uid24_rndd is
      port ( clk, rst : in std_logic;
             I : in  std_logic_vector(56 downto 0);
             Count : out  std_logic_vector(5 downto 0);
             O : out  std_logic_vector(56 downto 0)   );
   end component;

   component IntAdder_66_f400_uid28_rndd is
      port ( clk, rst : in std_logic;
             X : in  std_logic_vector(65 downto 0);
             Y : in  std_logic_vector(65 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(65 downto 0)   );
   end component;

signal excExpFracX :  std_logic_vector(64 downto 0);
signal excExpFracY :  std_logic_vector(64 downto 0);
signal eXmeY, eXmeY_d1 :  std_logic_vector(11 downto 0);
signal eYmeX, eYmeX_d1 :  std_logic_vector(11 downto 0);
signal addCmpOp1 :  std_logic_vector(65 downto 0);
signal addCmpOp2 :  std_logic_vector(65 downto 0);
signal cmpRes :  std_logic_vector(65 downto 0);
signal swap :  std_logic;
signal mY :  std_logic_vector(65 downto 0);
signal newX, newX_d1, newX_d2, newX_d3, newX_d4 :  std_logic_vector(65 downto 0);
signal newY, newY_d1 :  std_logic_vector(65 downto 0);
signal expX, expX_d1, expX_d2, expX_d3, expX_d4, expX_d5 :  std_logic_vector(10 downto 0);
signal excX :  std_logic_vector(1 downto 0);
signal excY, excY_d1 :  std_logic_vector(1 downto 0);
signal signX, signX_d1 :  std_logic;
signal signY :  std_logic;
signal EffSub, EffSub_d1, EffSub_d2, EffSub_d3, EffSub_d4, EffSub_d5, EffSub_d6, EffSub_d7, EffSub_d8, EffSub_d9, EffSub_d10 :  std_logic;
signal sXsYExnXY, sXsYExnXY_d1 :  std_logic_vector(5 downto 0);
signal sdExnXY :  std_logic_vector(3 downto 0);
signal fracY :  std_logic_vector(52 downto 0);
signal excRt, excRt_d1, excRt_d2, excRt_d3, excRt_d4, excRt_d5, excRt_d6, excRt_d7, excRt_d8 :  std_logic_vector(1 downto 0);
signal signR, signR_d1, signR_d2, signR_d3, signR_d4, signR_d5, signR_d6, signR_d7, signR_d8, signR_d9 :  std_logic;
signal expDiff :  std_logic_vector(11 downto 0);
signal shiftedOut :  std_logic;
signal shiftVal, shiftVal_d1 :  std_logic_vector(5 downto 0);
signal shiftedFracY, shiftedFracY_d1 :  std_logic_vector(107 downto 0);
signal sticky, sticky_d1 :  std_logic;
signal fracYfar :  std_logic_vector(55 downto 0);
signal EffSubVector :  std_logic_vector(55 downto 0);
signal fracYfarXorOp :  std_logic_vector(55 downto 0);
signal fracXfar :  std_logic_vector(55 downto 0);
signal cInAddFar :  std_logic;
signal fracAddResult :  std_logic_vector(55 downto 0);
signal fracGRS :  std_logic_vector(56 downto 0);
signal extendedExpInc, extendedExpInc_d1, extendedExpInc_d2, extendedExpInc_d3 :  std_logic_vector(12 downto 0);
signal nZerosNew :  std_logic_vector(5 downto 0);
signal shiftedFrac :  std_logic_vector(56 downto 0);
signal updatedExp :  std_logic_vector(12 downto 0);
signal eqdiffsign, eqdiffsign_d1, eqdiffsign_d2 :  std_logic;
signal expFrac,expFrac1 :  std_logic_vector(65 downto 0);
signal stk :  std_logic;
signal rnd :  std_logic;
signal grd :  std_logic;
signal lsb :  std_logic;
signal addToRoundBit :  std_logic;
signal RoundedExpFrac :  std_logic_vector(65 downto 0);
signal upExc :  std_logic_vector(1 downto 0);
signal fracR, fracR_d1 :  std_logic_vector(51 downto 0);
signal expR, expR_d1 :  std_logic_vector(10 downto 0);
signal exExpExc :  std_logic_vector(3 downto 0);
signal excRt2, excRt2_d1 :  std_logic_vector(1 downto 0);
signal excR :  std_logic_vector(1 downto 0);
signal signR2 :  std_logic;
signal computedR :  std_logic_vector(65 downto 0);
signal X_d1 :  std_logic_vector(11+52+2 downto 0);
signal Y_d1 :  std_logic_vector(11+52+2 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            eXmeY_d1 <=  eXmeY;
            eYmeX_d1 <=  eYmeX;
            newX_d1 <=  newX;
            newX_d2 <=  newX_d1;
            newX_d3 <=  newX_d2;
            newX_d4 <=  newX_d3;
            newY_d1 <=  newY;
            expX_d1 <=  expX;
            expX_d2 <=  expX_d1;
            expX_d3 <=  expX_d2;
            expX_d4 <=  expX_d3;
            expX_d5 <=  expX_d4;
            excY_d1 <=  excY;
            signX_d1 <=  signX;
            EffSub_d1 <=  EffSub;
            EffSub_d2 <=  EffSub_d1;
            EffSub_d3 <=  EffSub_d2;
            EffSub_d4 <=  EffSub_d3;
            EffSub_d5 <=  EffSub_d4;
            EffSub_d6 <=  EffSub_d5;
            EffSub_d7 <=  EffSub_d6;
            EffSub_d8 <=  EffSub_d7;
            EffSub_d9 <=  EffSub_d8;
            EffSub_d10 <=  EffSub_d9;
            sXsYExnXY_d1 <=  sXsYExnXY;
            excRt_d1 <=  excRt;
            excRt_d2 <=  excRt_d1;
            excRt_d3 <=  excRt_d2;
            excRt_d4 <=  excRt_d3;
            excRt_d5 <=  excRt_d4;
            excRt_d6 <=  excRt_d5;
            excRt_d7 <=  excRt_d6;
            excRt_d8 <=  excRt_d7;
            signR_d1 <=  signR;
            signR_d2 <=  signR_d1;
            signR_d3 <=  signR_d2;
            signR_d4 <=  signR_d3;
            signR_d5 <=  signR_d4;
            signR_d6 <=  signR_d5;
            signR_d7 <=  signR_d6;
            signR_d8 <=  signR_d7;
            signR_d9 <=  signR_d8;
            shiftVal_d1 <=  shiftVal;
            shiftedFracY_d1 <=  shiftedFracY;
            sticky_d1 <=  sticky;
            extendedExpInc_d1 <=  extendedExpInc;
            extendedExpInc_d2 <=  extendedExpInc_d1;
            extendedExpInc_d3 <=  extendedExpInc_d2;
            eqdiffsign_d1 <=  eqdiffsign;
            eqdiffsign_d2 <=  eqdiffsign_d1;
            fracR_d1 <=  fracR;
            expR_d1 <=  expR;
            excRt2_d1 <=  excRt2;
            X_d1 <=  X;
            Y_d1 <=  Y;
         end if;
      end process;
-- Exponent difference and swap  --
   excExpFracX <= X(65 downto 64) & X(62 downto 0);
   excExpFracY <= Y(65 downto 64) & Y(62 downto 0);
   eXmeY <= ("0" & X(62 downto 52)) - ("0" & Y(62 downto 52));
   eYmeX <= ("0" & Y(62 downto 52)) - ("0" & X(62 downto 52));
   addCmpOp1<= "0" & excExpFracX;
   addCmpOp2<= "1" & not(excExpFracY);
   cmpAdder: IntAdder_66_f400_uid4_rndd  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => '1',
                 R => cmpRes,
                 X => addCmpOp1,
                 Y => addCmpOp2);
   ----------------Synchro barrier, entering cycle 1----------------
   swap <= cmpRes(65);
   mY <= Y_d1(65 downto 64) & not(Y_d1(63)) & Y_d1(62 downto 0);
   newX <= X_d1 when swap = '0' else mY;
   newY <= mY when swap = '0' else X_d1;
   expX<= newX(62 downto 52);
   excX<= newX(65 downto 64);
   excY<= newY(65 downto 64);
   signX<= newX(63);
   signY<= newY(63);
   EffSub <= signX xor signY;
   sXsYExnXY <= signX & signY & excX & excY;
   sdExnXY <= excX & excY;
   ----------------Synchro barrier, entering cycle 2----------------
   fracY <= "00000000000000000000000000000000000000000000000000000" when excY_d1="00" else ('1' & newY_d1(51 downto 0));
   with sXsYExnXY_d1 select 
   excRt <= "00" when "000000"|"010000"|"100000"|"110000",
      "01" when "000101"|"010101"|"100101"|"110101"|"000100"|"010100"|"100100"|"110100"|"000001"|"010001"|"100001"|"110001",
      "10" when "111010"|"001010"|"001000"|"011000"|"101000"|"111000"|"000010"|"010010"|"100010"|"110010"|"001001"|"011001"|"101001"|"111001"|"000110"|"010110"|"100110"|"110110", 
      "11" when others;
   signR<= '0' when (sXsYExnXY_d1="100000" or sXsYExnXY_d1="010000") else signX_d1;
   ---------------- cycle 1----------------
   expDiff <= eXmeY_d1 when swap = '0' else eYmeX_d1;
   shiftedOut <= '1' when (expDiff >= 54) else '0';
   shiftVal <= expDiff(5 downto 0) when shiftedOut='0' else CONV_STD_LOGIC_VECTOR(55,6) ;
   ----------------Synchro barrier, entering cycle 2----------------
   RightShifterComponent: RightShifter_53_by_max_55_F400_uid12_rndd  -- pipelineDepth=2 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 R => shiftedFracY,
                 S => shiftVal_d1,
                 X => fracY);
   ----------------Synchro barrier, entering cycle 4----------------
   ----------------Synchro barrier, entering cycle 5----------------
   sticky <= '0' when (shiftedFracY_d1(52 downto 0)=CONV_STD_LOGIC_VECTOR(0,53)) else '1';
   ---------------- cycle 4----------------
   ----------------Synchro barrier, entering cycle 5----------------
   fracYfar <= "0" & shiftedFracY_d1(107 downto 53);
   EffSubVector <= (55 downto 0 => EffSub_d4);
   fracYfarXorOp <= fracYfar xor EffSubVector;
   fracXfar <= "01" & (newX_d4(51 downto 0)) & "00";
   cInAddFar <= EffSub_d4 and not sticky;
   fracAdder: IntAdder_56_f400_uid16_rndd  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => cInAddFar,
                 R => fracAddResult,
                 X => fracXfar,
                 Y => fracYfarXorOp);
   ----------------Synchro barrier, entering cycle 6----------------
   fracGRS<= fracAddResult & sticky_d1; 
   extendedExpInc<= ("00" & expX_d5) + '1';
   LZC_component: LZCShifter_57_to_57_counting_64_F400_uid24_rndd  -- pipelineDepth=3 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Count => nZerosNew,
                 I => fracGRS,
                 O => shiftedFrac);
   ----------------Synchro barrier, entering cycle 9----------------
   updatedExp <= extendedExpInc_d3 - ("0000000" & nZerosNew);
   eqdiffsign <= '1' when nZerosNew="111111" else '0';
   expFrac<= updatedExp & shiftedFrac(55 downto 3);
   ---------------- cycle 9----------------
   stk<= shiftedFrac(1) or shiftedFrac(0);
   rnd<= shiftedFrac(2);
   grd<= shiftedFrac(3);
   lsb<= shiftedFrac(4);
   addToRoundBit<= '1' when (signR_d7='1' and (grd='1' or rnd='1' or stk='1'))  else '0';
   expFrac1<= updatedExp & shiftedFrac(55 downto 4) & addToRoundBit;
   roundingAdder: IntAdder_66_f400_uid28_rndd  -- pipelineDepth=1 maxInDelay=0
      port map ( clk  => clk,
                 rst  => rst,
                 Cin => addToRoundBit,
                 R => RoundedExpFrac,
                 X => expFrac1,
                 Y => "000000000000000000000000000000000000000000000000000000000000000000");
   ---------------- cycle 10----------------
   upExc <= RoundedExpFrac(65 downto 64);
   fracR <= RoundedExpFrac(52 downto 1);
   expR <= RoundedExpFrac(63 downto 53);
   exExpExc <= upExc & excRt_d8;
   with (exExpExc) select 
   excRt2<= "00" when "0000"|"0100"|"1000"|"1100"|"1001"|"1101",
      "01" when "0001",
      "10" when "0010"|"0110"|"1010"|"1110"|"0101",
      "11" when others;
   ----------------Synchro barrier, entering cycle 11----------------
   excR <= "00" when (eqdiffsign_d2='1' and EffSub_d10='1') else excRt2_d1;
   signR2 <= '0' when (eqdiffsign_d2='1' and EffSub_d10='1') else signR_d9;
   computedR <= excR & signR2 & expR_d1 & fracR_d1;
   R <= computedR;
end architecture;

