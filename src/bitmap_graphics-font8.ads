
with Interfaces; use Interfaces;
with Interfaces.C; use Interfaces.C;
with Bitmap_Graphics; use Bitmap_Graphics;

package Bitmap_Graphics.Font8 is



    -- Font8: constant Font;


    Font8_Data : aliased Byte_Array := (

  	-- @0 ' ' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @8 '!' (5 pixels wide)
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#00#, --
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @16 '"' (5 pixels wide)
  	16#50#, --  # #
  	16#50#, --  # #
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @24 '#' (5 pixels wide)
  	16#28#, --   # #
  	16#50#, --  # #
  	16#F8#, -- #####
  	16#50#, --  # #
  	16#F8#, -- #####
  	16#50#, --  # #
  	16#A0#, -- # #
  	16#00#, --

  	-- @32 '$' (5 pixels wide)
  	16#20#, --   #
  	16#30#, --   ##
  	16#60#, --  ##
  	16#30#, --   ##
  	16#10#, --    #
  	16#60#, --  ##
  	16#20#, --   #
  	16#00#, --

  	-- @40 '%' (5 pixels wide)
  	16#20#, --   #
  	16#20#, --   #
  	16#18#, --    ##
  	16#60#, --  ##
  	16#10#, --    #
  	16#10#, --    #
  	16#00#, --
  	16#00#, --

  	-- @48 '&' (5 pixels wide)
  	16#00#, --
  	16#38#, --   ###
  	16#20#, --   #
  	16#60#, --  ##
  	16#50#, --  # #
  	16#78#, --  ####
  	16#00#, --
  	16#00#, --

  	-- @56 ''' (5 pixels wide)
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @64 '(' (5 pixels wide)
  	16#10#, --    #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#10#, --    #
  	16#00#, --

  	-- @72 ')' (5 pixels wide)
  	16#40#, --  #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#40#, --  #
  	16#00#, --

  	-- @80 '*' (5 pixels wide)
  	16#20#, --   #
  	16#70#, --  ###
  	16#20#, --   #
  	16#50#, --  # #
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @88 '+' (5 pixels wide)
  	16#00#, --
  	16#20#, --   #
  	16#20#, --   #
  	16#F8#, -- #####
  	16#20#, --   #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @96 ',' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#10#, --    #
  	16#20#, --   #
  	16#20#, --   #
  	16#00#, --

  	-- @104 '-' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @112 '.' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @120 '/' (5 pixels wide)
  	16#10#, --    #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#40#, --  #
  	16#40#, --  #
  	16#80#, -- #
  	16#00#, --

  	-- @128 '0' (5 pixels wide)
  	16#20#, --   #
  	16#50#, --  # #
  	16#50#, --  # #
  	16#50#, --  # #
  	16#50#, --  # #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @136 '1' (5 pixels wide)
  	16#60#, --  ##
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#F8#, -- #####
  	16#00#, --
  	16#00#, --

  	-- @144 '2' (5 pixels wide)
  	16#20#, --   #
  	16#50#, --  # #
  	16#20#, --   #
  	16#20#, --   #
  	16#40#, --  #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @152 '3' (5 pixels wide)
  	16#20#, --   #
  	16#50#, --  # #
  	16#10#, --    #
  	16#20#, --   #
  	16#10#, --    #
  	16#60#, --  ##
  	16#00#, --
  	16#00#, --

  	-- @160 '4' (5 pixels wide)
  	16#10#, --    #
  	16#30#, --   ##
  	16#50#, --  # #
  	16#78#, --  ####
  	16#10#, --    #
  	16#38#, --   ###
  	16#00#, --
  	16#00#, --

  	-- @168 '5' (5 pixels wide)
  	16#70#, --  ###
  	16#40#, --  #
  	16#60#, --  ##
  	16#10#, --    #
  	16#50#, --  # #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @176 '6' (5 pixels wide)
  	16#30#, --   ##
  	16#40#, --  #
  	16#60#, --  ##
  	16#50#, --  # #
  	16#50#, --  # #
  	16#60#, --  ##
  	16#00#, --
  	16#00#, --

  	-- @184 '7' (5 pixels wide)
  	16#70#, --  ###
  	16#50#, --  # #
  	16#10#, --    #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @192 '8' (5 pixels wide)
  	16#20#, --   #
  	16#50#, --  # #
  	16#20#, --   #
  	16#50#, --  # #
  	16#50#, --  # #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @200 '9' (5 pixels wide)
  	16#30#, --   ##
  	16#50#, --  # #
  	16#50#, --  # #
  	16#30#, --   ##
  	16#10#, --    #
  	16#60#, --  ##
  	16#00#, --
  	16#00#, --

  	-- @208 ':' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#20#, --   #
  	16#00#, --
  	16#00#, --
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @216 ';' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#10#, --    #
  	16#00#, --
  	16#10#, --    #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @224 '<' (5 pixels wide)
  	16#00#, --
  	16#10#, --    #
  	16#20#, --   #
  	16#C0#, -- ##
  	16#20#, --   #
  	16#10#, --    #
  	16#00#, --
  	16#00#, --

  	-- @232 '=' (5 pixels wide)
  	16#00#, --
  	16#70#, --  ###
  	16#00#, --
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @240 '>' (5 pixels wide)
  	16#00#, --
  	16#40#, --  #
  	16#20#, --   #
  	16#18#, --    ##
  	16#20#, --   #
  	16#40#, --  #
  	16#00#, --
  	16#00#, --

  	-- @248 '?' (5 pixels wide)
  	16#20#, --   #
  	16#50#, --  # #
  	16#10#, --    #
  	16#20#, --   #
  	16#00#, --
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @256 '@' (5 pixels wide)
  	16#30#, --   ##
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#58#, --  # ##
  	16#48#, --  #  #
  	16#40#, --  #
  	16#38#, --   ###
  	16#00#, --

  	-- @264 'A' (5 pixels wide)
  	16#60#, --  ##
  	16#20#, --   #
  	16#50#, --  # #
  	16#70#, --  ###
  	16#88#, -- #   #
  	16#D8#, -- ## ##
  	16#00#, --
  	16#00#, --

  	-- @272 'B' (5 pixels wide)
  	16#F0#, -- ####
  	16#48#, --  #  #
  	16#70#, --  ###
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#F0#, -- ####
  	16#00#, --
  	16#00#, --

  	-- @280 'C' (5 pixels wide)
  	16#70#, --  ###
  	16#50#, --  # #
  	16#40#, --  #
  	16#40#, --  #
  	16#40#, --  #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @288 'D' (5 pixels wide)
  	16#F0#, -- ####
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#F0#, -- ####
  	16#00#, --
  	16#00#, --

  	-- @296 'E' (5 pixels wide)
  	16#F8#, -- #####
  	16#48#, --  #  #
  	16#60#, --  ##
  	16#40#, --  #
  	16#48#, --  #  #
  	16#F8#, -- #####
  	16#00#, --
  	16#00#, --

  	-- @304 'F' (5 pixels wide)
  	16#F8#, -- #####
  	16#48#, --  #  #
  	16#60#, --  ##
  	16#40#, --  #
  	16#40#, --  #
  	16#E0#, -- ###
  	16#00#, --
  	16#00#, --

  	-- @312 'G' (5 pixels wide)
  	16#70#, --  ###
  	16#40#, --  #
  	16#40#, --  #
  	16#58#, --  # ##
  	16#50#, --  # #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @320 'H' (5 pixels wide)
  	16#E8#, -- ### #
  	16#48#, --  #  #
  	16#78#, --  ####
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#E8#, -- ### #
  	16#00#, --
  	16#00#, --

  	-- @328 'I' (5 pixels wide)
  	16#70#, --  ###
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @336 'J' (5 pixels wide)
  	16#38#, --   ###
  	16#10#, --    #
  	16#10#, --    #
  	16#50#, --  # #
  	16#50#, --  # #
  	16#20#, --   #
  	16#00#, --
  	16#00#, --

  	-- @344 'K' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#50#, --  # #
  	16#60#, --  ##
  	16#70#, --  ###
  	16#50#, --  # #
  	16#D8#, -- ## ##
  	16#00#, --
  	16#00#, --

  	-- @352 'L' (5 pixels wide)
  	16#E0#, -- ###
  	16#40#, --  #
  	16#40#, --  #
  	16#40#, --  #
  	16#48#, --  #  #
  	16#F8#, -- #####
  	16#00#, --
  	16#00#, --

  	-- @360 'M' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#D8#, -- ## ##
  	16#D8#, -- ## ##
  	16#A8#, -- # # #
  	16#88#, -- #   #
  	16#D8#, -- ## ##
  	16#00#, --
  	16#00#, --

  	-- @368 'N' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#68#, --  ## #
  	16#68#, --  ## #
  	16#58#, --  # ##
  	16#58#, --  # ##
  	16#E8#, -- ### #
  	16#00#, --
  	16#00#, --

  	-- @376 'O' (5 pixels wide)
  	16#30#, --   ##
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @384 'P' (5 pixels wide)
  	16#F0#, -- ####
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#70#, --  ###
  	16#40#, --  #
  	16#E0#, -- ###
  	16#00#, --
  	16#00#, --

  	-- @392 'Q' (5 pixels wide)
  	16#30#, --   ##
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#18#, --    ##
  	16#00#, --

  	-- @400 'R' (5 pixels wide)
  	16#F0#, -- ####
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#70#, --  ###
  	16#48#, --  #  #
  	16#E8#, -- ### #
  	16#00#, --
  	16#00#, --

  	-- @408 'S' (5 pixels wide)
  	16#70#, --  ###
  	16#50#, --  # #
  	16#20#, --   #
  	16#10#, --    #
  	16#50#, --  # #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @416 'T' (5 pixels wide)
  	16#F8#, -- #####
  	16#A8#, -- # # #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @424 'U' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @432 'V' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#88#, -- #   #
  	16#48#, --  #  #
  	16#50#, --  # #
  	16#50#, --  # #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @440 'W' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#88#, -- #   #
  	16#A8#, -- # # #
  	16#A8#, -- # # #
  	16#A8#, -- # # #
  	16#50#, --  # #
  	16#00#, --
  	16#00#, --

  	-- @448 'X' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#50#, --  # #
  	16#20#, --   #
  	16#20#, --   #
  	16#50#, --  # #
  	16#D8#, -- ## ##
  	16#00#, --
  	16#00#, --

  	-- @456 'Y' (5 pixels wide)
  	16#D8#, -- ## ##
  	16#88#, -- #   #
  	16#50#, --  # #
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @464 'Z' (5 pixels wide)
  	16#78#, --  ####
  	16#48#, --  #  #
  	16#10#, --    #
  	16#20#, --   #
  	16#48#, --  #  #
  	16#78#, --  ####
  	16#00#, --
  	16#00#, --

  	-- @472 '[' (5 pixels wide)
  	16#30#, --   ##
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#30#, --   ##
  	16#00#, --

  	-- @480 '\' (5 pixels wide)
  	16#80#, -- #
  	16#40#, --  #
  	16#40#, --  #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#10#, --    #
  	16#00#, --

  	-- @488 ']' (5 pixels wide)
  	16#60#, --  ##
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#60#, --  ##
  	16#00#, --

  	-- @496 '^' (5 pixels wide)
  	16#20#, --   #
  	16#20#, --   #
  	16#50#, --  # #
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @504 '_' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#F8#, -- #####

  	-- @512 '`' (5 pixels wide)
  	16#20#, --   #
  	16#10#, --    #
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#00#, --

  	-- @520 'a' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#30#, --   ##
  	16#10#, --    #
  	16#70#, --  ###
  	16#78#, --  ####
  	16#00#, --
  	16#00#, --

  	-- @528 'b' (5 pixels wide)
  	16#C0#, -- ##
  	16#40#, --  #
  	16#70#, --  ###
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#F0#, -- ####
  	16#00#, --
  	16#00#, --

  	-- @536 'c' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#70#, --  ###
  	16#40#, --  #
  	16#40#, --  #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @544 'd' (5 pixels wide)
  	16#18#, --    ##
  	16#08#, --     #
  	16#38#, --   ###
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#38#, --   ###
  	16#00#, --
  	16#00#, --

  	-- @552 'e' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#70#, --  ###
  	16#70#, --  ###
  	16#40#, --  #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @560 'f' (5 pixels wide)
  	16#10#, --    #
  	16#20#, --   #
  	16#70#, --  ###
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @568 'g' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#38#, --   ###
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#38#, --   ###
  	16#08#, --     #
  	16#30#, --   ##

  	-- @576 'h' (5 pixels wide)
  	16#C0#, -- ##
  	16#40#, --  #
  	16#70#, --  ###
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#E8#, -- ### #
  	16#00#, --
  	16#00#, --

  	-- @584 'i' (5 pixels wide)
  	16#20#, --   #
  	16#00#, --
  	16#60#, --  ##
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @592 'j' (5 pixels wide)
  	16#20#, --   #
  	16#00#, --
  	16#70#, --  ###
  	16#10#, --    #
  	16#10#, --    #
  	16#10#, --    #
  	16#10#, --    #
  	16#70#, --  ###

  	-- @600 'k' (5 pixels wide)
  	16#C0#, -- ##
  	16#40#, --  #
  	16#58#, --  # ##
  	16#70#, --  ###
  	16#50#, --  # #
  	16#D8#, -- ## ##
  	16#00#, --
  	16#00#, --

  	-- @608 'l' (5 pixels wide)
  	16#60#, --  ##
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @616 'm' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#D0#, -- ## #
  	16#A8#, -- # # #
  	16#A8#, -- # # #
  	16#A8#, -- # # #
  	16#00#, --
  	16#00#, --

  	-- @624 'n' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#F0#, -- ####
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#C8#, -- ##  #
  	16#00#, --
  	16#00#, --

  	-- @632 'o' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#30#, --   ##
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @640 'p' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#F0#, -- ####
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#70#, --  ###
  	16#40#, --  #
  	16#E0#, -- ###

  	-- @648 'q' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#38#, --   ###
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#38#, --   ###
  	16#08#, --     #
  	16#18#, --    ##

  	-- @656 'r' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#78#, --  ####
  	16#20#, --   #
  	16#20#, --   #
  	16#70#, --  ###
  	16#00#, --
  	16#00#, --

  	-- @664 's' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#30#, --   ##
  	16#20#, --   #
  	16#10#, --    #
  	16#60#, --  ##
  	16#00#, --
  	16#00#, --

  	-- @672 't' (5 pixels wide)
  	16#00#, --
  	16#40#, --  #
  	16#F0#, -- ####
  	16#40#, --  #
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @680 'u' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#D8#, -- ## ##
  	16#48#, --  #  #
  	16#48#, --  #  #
  	16#38#, --   ###
  	16#00#, --
  	16#00#, --

  	-- @688 'v' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#C8#, -- ##  #
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#30#, --   ##
  	16#00#, --
  	16#00#, --

  	-- @696 'w' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#D8#, -- ## ##
  	16#A8#, -- # # #
  	16#A8#, -- # # #
  	16#50#, --  # #
  	16#00#, --
  	16#00#, --

  	-- @704 'x' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#48#, --  #  #
  	16#30#, --   ##
  	16#30#, --   ##
  	16#48#, --  #  #
  	16#00#, --
  	16#00#, --

  	-- @712 'y' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#D8#, -- ## ##
  	16#50#, --  # #
  	16#50#, --  # #
  	16#20#, --   #
  	16#20#, --   #
  	16#60#, --  ##

  	-- @720 'z' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#78#, --  ####
  	16#50#, --  # #
  	16#28#, --   # #
  	16#78#, --  ####
  	16#00#, --
  	16#00#, --

  	-- @728 '{' (5 pixels wide)
  	16#10#, --    #
  	16#20#, --   #
  	16#20#, --   #
  	16#60#, --  ##
  	16#20#, --   #
  	16#20#, --   #
  	16#10#, --    #
  	16#00#, --

  	-- @736 '|' (5 pixels wide)
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#20#, --   #
  	16#00#, --

  	-- @744 '}' (5 pixels wide)
  	16#40#, --  #
  	16#20#, --   #
  	16#20#, --   #
  	16#30#, --   ##
  	16#20#, --   #
  	16#20#, --   #
  	16#40#, --  #
  	16#00#, --

  	-- @752 '~' (5 pixels wide)
  	16#00#, --
  	16#00#, --
  	16#00#, --
  	16#28#, --   # #
  	16#50#, --  # #
  	16#00#, --
  	16#00#, --
  	16#00# --
  );

  Font8: aliased Font := (
    Width => 5,
    Height => 8,
    Data => Font8_Data'access
  );



end Bitmap_Graphics.Font8;