
with Interfaces; use Interfaces;
with Interfaces.C; use Interfaces.C;
with Bitmap_Graphics; use Bitmap_Graphics;

package Bitmap_Graphics.Font12 is


  Font_Data : aliased Byte_Array := (
    	-- @0 ' ' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @12 '!' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @24 '"' (7 pixels wide)
    	16#00#, --
    	16#6C#, --  ## ##
    	16#48#, --  #  #
    	16#48#, --  #  #
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @36 '#' (7 pixels wide)
    	16#00#, --
    	16#14#, --    # #
    	16#14#, --    # #
    	16#28#, --   # #
    	16#7C#, --  #####
    	16#28#, --   # #
    	16#7C#, --  #####
    	16#28#, --   # #
    	16#50#, --  # #
    	16#50#, --  # #
    	16#00#, --
    	16#00#, --

    	-- @48 '$' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#38#, --   ###
    	16#40#, --  #
    	16#40#, --  #
    	16#38#, --   ###
    	16#48#, --  #  #
    	16#70#, --  ###
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --

    	-- @60 '%' (7 pixels wide)
    	16#00#, --
    	16#20#, --   #
    	16#50#, --  # #
    	16#20#, --   #
    	16#0C#, --     ##
    	16#70#, --  ###
    	16#08#, --     #
    	16#14#, --    # #
    	16#08#, --     #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @72 '&' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#18#, --    ##
    	16#20#, --   #
    	16#20#, --   #
    	16#54#, --  # # #
    	16#48#, --  #  #
    	16#34#, --   ## #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @84 ''' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @96 '(' (7 pixels wide)
    	16#00#, --
    	16#08#, --     #
    	16#08#, --     #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#08#, --     #
    	16#08#, --     #
    	16#00#, --

    	-- @108 ')' (7 pixels wide)
    	16#00#, --
    	16#20#, --   #
    	16#20#, --   #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#20#, --   #
    	16#20#, --   #
    	16#00#, --

    	-- @120 '*' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#7C#, --  #####
    	16#10#, --    #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @132 '+' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#FE#, -- #######
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @144 ',' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#18#, --    ##
    	16#10#, --    #
    	16#30#, --   ##
    	16#20#, --   #
    	16#00#, --

    	-- @156 '-' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @168 '.' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#30#, --   ##
    	16#30#, --   ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @180 '/' (7 pixels wide)
    	16#00#, --
    	16#04#, --      #
    	16#04#, --      #
    	16#08#, --     #
    	16#08#, --     #
    	16#10#, --    #
    	16#10#, --    #
    	16#20#, --   #
    	16#20#, --   #
    	16#40#, --  #
    	16#00#, --
    	16#00#, --

    	-- @192 '0' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @204 '1' (7 pixels wide)
    	16#00#, --
    	16#30#, --   ##
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @216 '2' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#04#, --      #
    	16#08#, --     #
    	16#10#, --    #
    	16#20#, --   #
    	16#44#, --  #   #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @228 '3' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#04#, --      #
    	16#18#, --    ##
    	16#04#, --      #
    	16#04#, --      #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @240 '4' (7 pixels wide)
    	16#00#, --
    	16#0C#, --     ##
    	16#14#, --    # #
    	16#14#, --    # #
    	16#24#, --   #  #
    	16#44#, --  #   #
    	16#7E#, --  ######
    	16#04#, --      #
    	16#0E#, --     ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @252 '5' (7 pixels wide)
    	16#00#, --
    	16#3C#, --   ####
    	16#20#, --   #
    	16#20#, --   #
    	16#38#, --   ###
    	16#04#, --      #
    	16#04#, --      #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @264 '6' (7 pixels wide)
    	16#00#, --
    	16#1C#, --    ###
    	16#20#, --   #
    	16#40#, --  #
    	16#78#, --  ####
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @276 '7' (7 pixels wide)
    	16#00#, --
    	16#7C#, --  #####
    	16#44#, --  #   #
    	16#04#, --      #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @288 '8' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @300 '9' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#3C#, --   ####
    	16#04#, --      #
    	16#08#, --     #
    	16#70#, --  ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @312 ':' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#30#, --   ##
    	16#30#, --   ##
    	16#00#, --
    	16#00#, --
    	16#30#, --   ##
    	16#30#, --   ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @324 ';' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#18#, --    ##
    	16#18#, --    ##
    	16#00#, --
    	16#00#, --
    	16#18#, --    ##
    	16#30#, --   ##
    	16#20#, --   #
    	16#00#, --
    	16#00#, --

    	-- @336 '<' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#0C#, --     ##
    	16#10#, --    #
    	16#60#, --  ##
    	16#80#, -- #
    	16#60#, --  ##
    	16#10#, --    #
    	16#0C#, --     ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @348 '=' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#7C#, --  #####
    	16#00#, --
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @360 '>' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#C0#, -- ##
    	16#20#, --   #
    	16#18#, --    ##
    	16#04#, --      #
    	16#18#, --    ##
    	16#20#, --   #
    	16#C0#, -- ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @372 '?' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#18#, --    ##
    	16#24#, --   #  #
    	16#04#, --      #
    	16#08#, --     #
    	16#10#, --    #
    	16#00#, --
    	16#30#, --   ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @384 '@' (7 pixels wide)
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#4C#, --  #  ##
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#4C#, --  #  ##
    	16#40#, --  #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --

    	-- @396 'A' (7 pixels wide)
    	16#00#, --
    	16#30#, --   ##
    	16#10#, --    #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#7C#, --  #####
    	16#44#, --  #   #
    	16#EE#, -- ### ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @408 'B' (7 pixels wide)
    	16#00#, --
    	16#F8#, -- #####
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#78#, --  ####
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#F8#, -- #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @420 'C' (7 pixels wide)
    	16#00#, --
    	16#3C#, --   ####
    	16#44#, --  #   #
    	16#40#, --  #
    	16#40#, --  #
    	16#40#, --  #
    	16#40#, --  #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @432 'D' (7 pixels wide)
    	16#00#, --
    	16#F0#, -- ####
    	16#48#, --  #  #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#48#, --  #  #
    	16#F0#, -- ####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @444 'E' (7 pixels wide)
    	16#00#, --
    	16#FC#, -- ######
    	16#44#, --  #   #
    	16#50#, --  # #
    	16#70#, --  ###
    	16#50#, --  # #
    	16#40#, --  #
    	16#44#, --  #   #
    	16#FC#, -- ######
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @456 'F' (7 pixels wide)
    	16#00#, --
    	16#7E#, --  ######
    	16#22#, --   #   #
    	16#28#, --   # #
    	16#38#, --   ###
    	16#28#, --   # #
    	16#20#, --   #
    	16#20#, --   #
    	16#70#, --  ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @468 'G' (7 pixels wide)
    	16#00#, --
    	16#3C#, --   ####
    	16#44#, --  #   #
    	16#40#, --  #
    	16#40#, --  #
    	16#4E#, --  #  ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @480 'H' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#7C#, --  #####
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#EE#, -- ### ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @492 'I' (7 pixels wide)
    	16#00#, --
    	16#7C#, --  #####
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @504 'J' (7 pixels wide)
    	16#00#, --
    	16#3C#, --   ####
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#48#, --  #  #
    	16#48#, --  #  #
    	16#48#, --  #  #
    	16#30#, --   ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @516 'K' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#48#, --  #  #
    	16#50#, --  # #
    	16#70#, --  ###
    	16#48#, --  #  #
    	16#44#, --  #   #
    	16#E6#, -- ###  ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @528 'L' (7 pixels wide)
    	16#00#, --
    	16#70#, --  ###
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#24#, --   #  #
    	16#24#, --   #  #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @540 'M' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#6C#, --  ## ##
    	16#6C#, --  ## ##
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#EE#, -- ### ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @552 'N' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#64#, --  ##  #
    	16#64#, --  ##  #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#4C#, --  #  ##
    	16#EC#, -- ### ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @564 'O' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @576 'P' (7 pixels wide)
    	16#00#, --
    	16#78#, --  ####
    	16#24#, --   #  #
    	16#24#, --   #  #
    	16#24#, --   #  #
    	16#38#, --   ###
    	16#20#, --   #
    	16#20#, --   #
    	16#70#, --  ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @588 'Q' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#1C#, --    ###
    	16#00#, --
    	16#00#, --

    	-- @600 'R' (7 pixels wide)
    	16#00#, --
    	16#F8#, -- #####
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#78#, --  ####
    	16#48#, --  #  #
    	16#44#, --  #   #
    	16#E2#, -- ###   #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @612 'S' (7 pixels wide)
    	16#00#, --
    	16#34#, --   ## #
    	16#4C#, --  #  ##
    	16#40#, --  #
    	16#38#, --   ###
    	16#04#, --      #
    	16#04#, --      #
    	16#64#, --  ##  #
    	16#58#, --  # ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @624 'T' (7 pixels wide)
    	16#00#, --
    	16#FE#, -- #######
    	16#92#, -- #  #  #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @636 'U' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @648 'V' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @660 'W' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#28#, --   # #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @672 'X' (7 pixels wide)
    	16#00#, --
    	16#C6#, -- ##   ##
    	16#44#, --  #   #
    	16#28#, --   # #
    	16#10#, --    #
    	16#10#, --    #
    	16#28#, --   # #
    	16#44#, --  #   #
    	16#C6#, -- ##   ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @684 'Y' (7 pixels wide)
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @696 'Z' (7 pixels wide)
    	16#00#, --
    	16#7C#, --  #####
    	16#44#, --  #   #
    	16#08#, --     #
    	16#10#, --    #
    	16#10#, --    #
    	16#20#, --   #
    	16#44#, --  #   #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @708 '[' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#38#, --   ###
    	16#00#, --

    	-- @720 '\' (7 pixels wide)
    	16#00#, --
    	16#40#, --  #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#10#, --    #
    	16#10#, --    #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#00#, --
    	16#00#, --

    	-- @732 ']' (7 pixels wide)
    	16#00#, --
    	16#38#, --   ###
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#38#, --   ###
    	16#00#, --

    	-- @744 '^' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#10#, --    #
    	16#28#, --   # #
    	16#44#, --  #   #
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @756 '_' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#FE#, -- #######

    	-- @768 '`' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#08#, --     #
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @780 'a' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#3C#, --   ####
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#3E#, --   #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @792 'b' (7 pixels wide)
    	16#00#, --
    	16#C0#, -- ##
    	16#40#, --  #
    	16#58#, --  # ##
    	16#64#, --  ##  #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#F8#, -- #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @804 'c' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#3C#, --   ####
    	16#44#, --  #   #
    	16#40#, --  #
    	16#40#, --  #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @816 'd' (7 pixels wide)
    	16#00#, --
    	16#0C#, --     ##
    	16#04#, --      #
    	16#34#, --   ## #
    	16#4C#, --  #  ##
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#3E#, --   #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @828 'e' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#7C#, --  #####
    	16#40#, --  #
    	16#40#, --  #
    	16#3C#, --   ####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @840 'f' (7 pixels wide)
    	16#00#, --
    	16#1C#, --    ###
    	16#20#, --   #
    	16#7C#, --  #####
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @852 'g' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#36#, --   ## ##
    	16#4C#, --  #  ##
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#3C#, --   ####
    	16#04#, --      #
    	16#38#, --   ###
    	16#00#, --

    	-- @864 'h' (7 pixels wide)
    	16#00#, --
    	16#C0#, -- ##
    	16#40#, --  #
    	16#58#, --  # ##
    	16#64#, --  ##  #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#EE#, -- ### ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @876 'i' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#00#, --
    	16#70#, --  ###
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @888 'j' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#00#, --
    	16#78#, --  ####
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#08#, --     #
    	16#70#, --  ###
    	16#00#, --

    	-- @900 'k' (7 pixels wide)
    	16#00#, --
    	16#C0#, -- ##
    	16#40#, --  #
    	16#5C#, --  # ###
    	16#48#, --  #  #
    	16#70#, --  ###
    	16#50#, --  # #
    	16#48#, --  #  #
    	16#DC#, -- ## ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @912 'l' (7 pixels wide)
    	16#00#, --
    	16#30#, --   ##
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @924 'm' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#E8#, -- ### #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#FE#, -- #######
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @936 'n' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#D8#, -- ## ##
    	16#64#, --  ##  #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#EE#, -- ### ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @948 'o' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#38#, --   ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @960 'p' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#D8#, -- ## ##
    	16#64#, --  ##  #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#78#, --  ####
    	16#40#, --  #
    	16#E0#, -- ###
    	16#00#, --

    	-- @972 'q' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#36#, --   ## ##
    	16#4C#, --  #  ##
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#3C#, --   ####
    	16#04#, --      #
    	16#0E#, --     ###
    	16#00#, --

    	-- @984 'r' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#6C#, --  ## ##
    	16#30#, --   ##
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @996 's' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#3C#, --   ####
    	16#44#, --  #   #
    	16#38#, --   ###
    	16#04#, --      #
    	16#44#, --  #   #
    	16#78#, --  ####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1008 't' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#20#, --   #
    	16#7C#, --  #####
    	16#20#, --   #
    	16#20#, --   #
    	16#20#, --   #
    	16#22#, --   #   #
    	16#1C#, --    ###
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1020 'u' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#CC#, -- ##  ##
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#4C#, --  #  ##
    	16#36#, --   ## ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1032 'v' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#44#, --  #   #
    	16#28#, --   # #
    	16#28#, --   # #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1044 'w' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#54#, --  # # #
    	16#28#, --   # #
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1056 'x' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#CC#, -- ##  ##
    	16#48#, --  #  #
    	16#30#, --   ##
    	16#30#, --   ##
    	16#48#, --  #  #
    	16#CC#, -- ##  ##
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1068 'y' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#EE#, -- ### ###
    	16#44#, --  #   #
    	16#24#, --   #  #
    	16#28#, --   # #
    	16#18#, --    ##
    	16#10#, --    #
    	16#10#, --    #
    	16#78#, --  ####
    	16#00#, --

    	-- @1080 'z' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#7C#, --  #####
    	16#48#, --  #  #
    	16#10#, --    #
    	16#20#, --   #
    	16#44#, --  #   #
    	16#7C#, --  #####
    	16#00#, --
    	16#00#, --
    	16#00#, --

    	-- @1092 '{' (7 pixels wide)
    	16#00#, --
    	16#08#, --     #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#20#, --   #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#08#, --     #
    	16#00#, --

    	-- @1104 '|' (7 pixels wide)
    	16#00#, --
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#00#, --
    	16#00#, --

    	-- @1116 '}' (7 pixels wide)
    	16#00#, --
    	16#20#, --   #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#08#, --     #
    	16#10#, --    #
    	16#10#, --    #
    	16#10#, --    #
    	16#20#, --   #
    	16#00#, --

    	-- @1128 '~' (7 pixels wide)
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#24#, --   #  #
    	16#58#, --  # ##
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00#, --
    	16#00# --
    );

  Font12: aliased Font := (
    Width => 7,
    Height => 12,
    Data => Font_Data'access
  );



end Bitmap_Graphics.Font12;
