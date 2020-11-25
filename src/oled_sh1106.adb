with OLED_SH1106.Display; use OLED_SH1106.Display;
with Bitmap_Buffer;
with Bitmap_Graphics; use Bitmap_Graphics;
with SPI;
with GPIO;

package body OLED_SH1106 is

  Display_Width : constant Natural := 128;
  Display_Height: constant Natural :=  64;

  package Graphics is new Bitmap_Buffer
    (Width =>  Display_Width, Height => Display_Height);
  Buffer : aliased Graphics.Buffer;


  function Start_Driver return Boolean is
  begin
    return OLED_SH1106.Display.Module_Init;
  end Start_Driver;

  procedure Stop_Driver  is
  begin
    SPI.Stop;
    GPIO.Close;
  end Stop_Driver;

  procedure Init_Display is
  begin
    OLED_SH1106.Display.Reset;
    OLED_SH1106.Display.Init_Reg;
    delay 0.2;
    Write_Reg(16#AF#);
  end Init_Display;

  procedure Show is
      Start : Natural := 0;
  begin
    for Page in 0..7 loop
      -- set page address
      Write_Reg(16#B0# + Unsigned_8(Page));
      -- set low column address
      Write_Reg(16#02#);
      -- set high column address
      Write_Reg(16#10#);

      -- write data
      Start_Data;
      for I in Start..(Start+Display_Width-1) loop
        Write_Data(Buffer.Data(i));
      end loop;
      Start := Start + Display_Width;
    end loop;
  end Show;

  -- Clear the screen.
  procedure Clear(Clr: Color:= Black) is
  begin
    Graphics.Set(Buffer'access, Clr);
  end Clear;

  -- Draw a point with size "Size" at poiny X,Y.
  procedure Dot(P: Point; Size: Positive:=1; Clr: Color:=White) is
  begin
    Graphics.Dot(Buffer'access, P, Size, Clr);
  end Dot;

  procedure Line
    (P,Q: Point; Size: Positive:= 1; Clr:Color:= White) is
  begin
    Graphics.Line(Buffer'access, P, Q, Size, Clr);
  end Line;

  procedure Rectangle
    (P, Q: Point; Size: Positive:= 1; Clr: Color:= White) is
  begin
    Graphics.Rectangle(Buffer'access, P, Q, Size, Clr);
  end Rectangle;

  procedure Fill_Rectangle
    (P, Q: Point; Clr: Color := White) is
  begin
    Graphics.Fill_Rectangle(Buffer'access, P, Q, Clr);
  end Fill_Rectangle;


  procedure Circle
    (Center: Point; R:Natural; Size: Positive := 1; Clr: Color:= White) is
  begin
    Graphics.Circle(Buffer'access, Center, R, Size, Clr);
  end Circle;

  procedure Fill_Circle
    (Center: Point; R: Natural; Clr: Color:= White) is
  begin
    Graphics.Fill_Circle(Buffer'access, Center, R, Clr);
  end Fill_Circle;

  procedure Put
    (P    : Point;
     Ch   : Character;
     Size : Positive:= 12;
     Fgnd : Color := White;
     Bgnd : Color := Black) is
  begin
    Graphics.Put(Buffer'access, P, Ch, Size, Fgnd, Bgnd);
  end Put;


  procedure Put
    (P    : Point;
     Text : String;
     Size : Positive:= 12;
     Fgnd : Color := White;
     Bgnd : Color := Black) is
  begin
    Graphics.Put(Buffer'access, P, Text, Size, Fgnd, Bgnd);
  end Put;


  -- Draw a number to the display
  procedure Put
    (P    : Point;                -- Position
     Num  : Natural;              -- The number to draw
     Size : Positive := 12;       -- Font size
     Fgnd : Color    := White;    -- Foreground color
     Bgnd : Color    := Black) is -- Background color
  begin
    Graphics.Put(Buffer'access, P, Num, Size, Fgnd, Bgnd);
  end Put;


  procedure Bitmap
    (P: Point; Bytes : Byte_Array_Access; S: Size) is
  begin
    Graphics.Bitmap(Buffer'access, P, Bytes, S);
  end Bitmap;

  procedure Bitmap
    (P: Point; Icon: Bitmap_Icon) is
  begin
    Graphics.Bitmap(Buffer'access, P, Icon);
  end;



end OLED_SH1106;
