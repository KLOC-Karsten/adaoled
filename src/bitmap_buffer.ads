--
-- Monochrome Bitmap Graphics Library
--
--

with Interfaces; use Interfaces;
with Bitmap_Graphics; use Bitmap_Graphics;

generic
  Width  : Natural;
  Height : Natural;
package Bitmap_Buffer is

  type Content is array ( 0 .. (Width * Height/8) ) of Unsigned_8;

  type Buffer is record
    Data : Content; 
  end record;

  type Buffer_Ref is access all Buffer;

  -- Set the color for the whole buffer.
  procedure Set
    (Buf: Buffer_Ref; Clr: Color);

  -- Set the color for one point.
  procedure Set
    (Buf: Buffer_Ref; P: Point; Clr: Color);

  -- Draw a point with a color.
  procedure Dot
    (Buf:Buffer_Ref; P:Point; Size:Positive:=1; Clr:Color:=White);

  -- Draw a line from P to Q.
  procedure Line
    (Buf:Buffer_Ref; P,Q: Point; Size:Positive:=1; Clr:Color:=White);

  -- Outline a rectangle P,Q
  procedure Rectangle
    (Buf:Buffer_Ref; P,Q: Point; Size:Positive:=1; Clr:Color:=White);

  procedure Fill_Rectangle
    (Buf:Buffer_Ref; P,Q: Point; Clr:Color:=White);

  procedure Circle
    (Buf:Buffer_Ref; P: Point; R: Natural; Size: Positive:=1; Clr: Color:=White);

  procedure Fill_Circle
    (Buf:Buffer_Ref; P: Point; R: Natural; Clr: Color:=White);

  procedure Put
    (Buf : Buffer_Ref;
     P   : Point;
     Ch  : Character;
     Size: Positive;
     Fgnd: Color:= White;
     Bgnd: Color:= Black);

  procedure Put
    (Buf : Buffer_Ref;
     P   : Point;
     Str : String;
     Size: Positive;
     Fgnd: Color:= White;
     Bgnd: Color:= Black);

  procedure Put
    (Buf : Buffer_Ref;
     P   : Point;
     Num : Natural;
     Size: Positive;
     Fgnd: Color:= White;
     Bgnd: Color:= Black);

  procedure Bitmap
    (Buf   : Buffer_Ref;
     P     : Point;
     Bytes : Byte_Array_Access;
     Siz   : Size);

  procedure Bitmap
    (Buf   : Buffer_Ref;
     P     : Point;
     Icon  : Bitmap_Icon);

end Bitmap_Buffer;
