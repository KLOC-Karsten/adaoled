

with Bitmap_Graphics; use Bitmap_Graphics;

package Bitmap_Graphics.Icons is


  Signal816: aliased Byte_Array := -- mobie singal
  (
      16#FE#, 16#02#, 16#92#, 16#0A#, 16#54#, 16#2A#, 16#38#, 16#AA#, 16#12#, 16#AA#, 16#12#, 16#AA#, 16#12#, 16#AA#, 16#12#, 16#AA#
  );

  Msg816: aliased Byte_Array :=  -- message
  (
      16#1F#, 16#F8#, 16#10#, 16#08#, 16#18#, 16#18#, 16#14#, 16#28#, 16#13#, 16#C8#, 16#10#, 16#08#, 16#10#, 16#08#, 16#1F#, 16#F8#
  );

  Bat816: aliased Byte_Array := -- batery
  (
      16#0F#, 16#FE#, 16#30#, 16#02#, 16#26#, 16#DA#, 16#26#, 16#DA#, 16#26#, 16#DA#, 16#26#, 16#DA#, 16#30#, 16#02#, 16#0F#, 16#FE#
  );

  Bluetooth88: aliased Byte_Array := --  bluetooth
  (
      16#18#, 16#54#, 16#32#, 16#1C#, 16#1C#, 16#32#, 16#54#, 16#18#
  );

  GPRS88: aliased Byte_Array := -- GPRS
  (
      16#C3#, 16#99#, 16#24#, 16#20#, 16#2C#, 16#24#, 16#99#, 16#C3#
  );

  Alarm88: aliased Byte_Array := -- alarm
  (
      16#C3#, 16#BD#, 16#42#, 16#52#, 16#4E#, 16#42#, 16#3C#, 16#C3#
  );


end Bitmap_Graphics.Icons;
