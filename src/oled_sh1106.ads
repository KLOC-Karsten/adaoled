
with Interfaces; use Interfaces;
with Interfaces.C; use Interfaces.C;
with Bitmap_Graphics; use Bitmap_Graphics;

package OLED_SH1106 is


  function Start_Driver return Boolean;

  procedure Stop_Driver ;

  procedure Init_Display;

  procedure Show;

  -- Graphics Routine.

  procedure Clear
    (Clr: Color:= Black);

  procedure Dot
    (P: Point; Size: Positive:= 1; Clr: Color:= White);

  procedure Line
    (P,Q: Point; Size: Positive:= 1; Clr: Color:= White);

  procedure Rectangle
    (P, Q: Point; Size: Positive:= 1; Clr: Color:= White);

  procedure Fill_Rectangle
    (P, Q: Point; Clr: Color := White);

  procedure Circle
    (Center: Point; R:Natural; Size: Positive := 1; Clr: Color:= White);

  procedure Fill_Circle
    (Center: Point; R: Natural; Clr: Color:= White);

  procedure Put
    (P    : Point;
     Ch   : Character;
     Size : Positive:= 12;
     Fgnd : Color := White;
     Bgnd : Color := Black);

  procedure Put
    (P    : Point;
     Text : String;
     Size : Positive:= 12;
     Fgnd : Color := White;
     Bgnd : Color := Black);

  procedure Put
    (P    : Point;
     Num  : Natural;
     Size : Positive := 12;
     Fgnd : Color:= White;
     Bgnd : Color:= Black);

  procedure Bitmap
    (P: Point; Bytes : Byte_Array_Access; S: Size);

  procedure Bitmap
    (P: Point; Icon: Bitmap_Icon);


end OLED_SH1106;
