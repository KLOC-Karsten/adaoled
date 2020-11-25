
with Interfaces; use Interfaces;

package Bitmap_Graphics is

  type Color is (Black, White);
  for  Color use (Black => 0, White => 255);

  type Point is record
    X : Natural;
    Y : Natural;
  end record;

  type Size is record
    Width  : Natural;
    Height : Natural;
  end record;

  type Byte_Array is array (Natural range <>) of Unsigned_8;
  type Byte_Array_Access is access all Byte_Array;

  type Bitmap_Icon is (Signal, Message, Battery, Bluetooth, GPRS, Alarm);

  procedure Get_Icon
    (Icon  : Bitmap_Icon;
     Width : out Natural;
     Height: out Natural;
     Data  : out Byte_Array_Access);

  type Font is record
    Width, Height : Natural;
    Data : Byte_Array_Access;
  end record;

  type Font_Access is access all Font;

  function Get_Font(Size: Positive) return Font_Access;

end Bitmap_Graphics;
