
with Bitmap_Graphics.Icons; use Bitmap_Graphics.Icons;
with Bitmap_Graphics.Font8;
with Bitmap_Graphics.Font12;
with Bitmap_Graphics.Font16;
with Bitmap_Graphics.Font20;
with Bitmap_Graphics.Font24;

package body Bitmap_Graphics is

  procedure Get_Icon
    (Icon  : Bitmap_Icon;
     Width : out Natural;
     Height: out Natural;
     Data  : out Byte_Array_Access) is
  begin
    case Icon is
      when Signal =>
        Width  := 16;
        Height := 8;
        Data   := Bitmap_Graphics.Icons.Signal816'access;
      when Message =>
        Width := 16; Height :=8;
        Data := Bitmap_Graphics.Icons.Msg816'access;
      when Battery =>
        Width := 16; Height :=8;
        Data := Bitmap_Graphics.Icons.Bat816'access;
      when Bluetooth =>
        Width := 8; Height :=8;
        Data := Bitmap_Graphics.Icons.Bluetooth88'access;
      when GPRS =>
        Width := 8; Height :=8;
        Data := Bitmap_Graphics.Icons.GPRS88'access;
      when Alarm =>
        Width := 8; Height :=8;
        Data := Bitmap_Graphics.Icons.Alarm88'access;
    end case;
  end Get_Icon;

  function Get_Font(Size: Positive) return Font_Access is
    F : Font_Access;
  begin
    case Size is
      when 8      => F := Bitmap_Graphics.Font8.Font8'access;
      when 12     => F := Bitmap_Graphics.Font12.Font12'access;
      when 16     => F := Bitmap_Graphics.Font16.Font16'access;
      when 20     => F := Bitmap_Graphics.Font20.Font20'access;
      when 24     => F := Bitmap_Graphics.Font24.Font24'access;
      when others => F := Bitmap_Graphics.Font12.Font12'access;
    end case;
    return F;
  end Get_Font;

end Bitmap_Graphics;
