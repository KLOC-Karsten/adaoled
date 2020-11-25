

with Interfaces; use Interfaces;
with Bitmap_Graphics; use Bitmap_Graphics;

package body Bitmap_Buffer is

  -- Set the color for the whole buffer.
  procedure Set(Buf: Buffer_Ref; Clr: Color) is
    Val: Unsigned_8;
  begin
    case Clr is
      when White => Val := 255;
      when Black => Val :=   0;
    end case;

    for I in 1 .. Buf.Data'Last loop
      Buf.Data(I) := Val;
    end loop;
  end Set;


  -- Set the color for one point in the graphics buffer.
  procedure Set
    (Buf: Buffer_Ref; -- The graphic buffer
     P  : Point;      -- Point to draw
     Clr: Color)      -- Color for point P
  is
    Index            : Natural;    -- Index of the byte in buffer
    Old_Val, New_Val : Unsigned_8; -- Old and new value for this byte
  begin
    if P.X <= Width and P.Y <= Height then
      Index   := P.X + (P.Y / 8) * Width;
      Old_Val := Buf.Data(Index);
      case Clr is
        when White =>
          New_Val := Old_Val or Shift_Left(1, P.Y mod 8);
        when Black =>
          New_Val := Old_Val or Shift_Left(0, P.Y mod 8);
      end case;
      Buf.Data(Index) := New_Val;
    end if;
  end Set;

  function Pt(P: Point; X,Y:Integer) return Point is
  begin
    return (P.X + X, P.Y + Y);
  end Pt;

  function Pt(X,Y:Natural) return Point is
  begin
    return (X, Y);
  end Pt;

  -- Draw a point with size "Size" at poiny X,Y.
  procedure Dot(Buf:Buffer_Ref; P:Point; Size:Positive:=1; Clr:Color:=White) is
  begin
    for Dx in -(Size-1) .. (Size-1) loop
      for Dy in -(Size-1) .. (Size-1) loop
          Set(Buf, Pt(P, Dx, Dy), Clr);
      end loop;
    end loop;
  end Dot;


  procedure Swap(X: in out Natural; Y: in out Natural) is
    Tmp : Natural;
  begin
    Tmp := X; X := Y; Y := Tmp;
  end Swap;

  procedure Line
    (Buf:Buffer_Ref; P,Q: Point; Size:Positive:=1; Clr:Color:=White)
  is
    X, Y: Natural;
    Dx, Dy : Integer;
    Step_X, Step_Y: Integer;
    Esp : Integer;
  begin
    if P.X <= Width and P.Y <= Height and Q.X <= Width and Q.Y <= Height then
      if P.X < Q.X then
        Dx := Q.X - P.X; Step_X := 1;
      else
        Dx := P.X - Q.X; Step_X := -1;
      end if;
      if P.Y < Q.Y then
        Dy := P.Y - Q.Y; -- ! Dy needs to be negative
        Step_Y := 1;
      else
        Dy := Q.Y - P.Y;
        Step_Y := -1;
      end if;
      X := P.X; Y := P.Y;
      Esp := Dx + Dy;
      --     int32_t dy =(int32_t)Yend -(int32_t)Ystart <= 0 ? Yend - Ystart : Ystart - Yend;
      loop
        Dot(Buf, Pt(X, Y), Size, Clr);
        if 2 * Esp >= dy then
          exit when X = Q.X;
          Esp := Esp + dy;
          X := X + Step_X;
        end if;
        if 2 * Esp <= dx then
          exit when Y = Q.Y;
          Esp := Esp + dx;
          Y := Y + Step_Y;
        end if;
      end  loop;
    end if;
  end Line;

  procedure Rectangle
    (Buf:Buffer_Ref; P,Q: Point; Size:Positive:=1; Clr:Color:=White) is
  begin
    Line(Buf, P, Pt(Q.X, P.Y), Size, Clr);
    Line(Buf, P, Pt(P.X, Q.Y), Size, Clr);
    Line(Buf, Q, Pt(Q.X, P.Y), Size, Clr);
    Line(Buf, Q, Pt(P.X, Q.Y), Size, Clr);
  end Rectangle;


  procedure Fill_Rectangle
    (Buf:Buffer_Ref; P,Q: Point; Clr:Color:=White)
  is
    Y_A, Y_B: Natural;
  begin
    if P.Y < Q.Y then
      Y_A := P.Y; Y_B := Q.Y;
    else
      Y_A := Q.Y; Y_B := P.Y;
    end if;
    for Y in Y_A .. Y_B loop
      Line(Buf, Pt(P.X, Y), Pt(Q.X, Y), 1, Clr);
    end loop;
  end Fill_Rectangle;


  procedure Circle
    (Buf:Buffer_Ref; P: Point; R: Natural; Size: Positive:=1; Clr: Color:=White)
  is
    X, Y: Integer;
    Esp : Integer;
  begin
    X := 0;
    Y := R;
    Esp := 3 - (R * 2);

    while X <= Y loop
      Dot(Buf, Pt(P.X + X, P.Y + Y), Size, Clr);             --1
      Dot(Buf, Pt(P.X - X, P.Y + Y), Size, Clr);             --2
      Dot(Buf, Pt(P.X - Y, P.Y + X), Size, Clr);             --3
      Dot(Buf, Pt(P.X - Y, P.Y - X), Size, Clr);             --4
      Dot(Buf, Pt(P.X - X, P.Y - Y), Size, Clr);             --5
      Dot(Buf, Pt(P.X + X, P.Y - Y), Size, Clr);             --6
      Dot(Buf, Pt(P.X + Y, P.Y - X), Size, Clr);             --7
      Dot(Buf, Pt(P.X + Y, P.Y + X), Size, Clr);             --0

      if Esp < 0 then
        Esp := Esp + (4 * X + 6);
      else
        Esp := Esp + (10 + 4 * (X - Y));
        Y := Y - 1;
      end if;
      X := X + 1;
    end loop;

  end Circle;


  procedure Fill_Circle
    (Buf:Buffer_Ref; P: Point; R: Natural; Clr: Color:=White)
  is
    X,Y: Integer;
    Esp : Integer;
  begin
    X := 0;
    Y := R;
    Esp := 3 - (R * 2);

    while X <= Y loop
      for Count_Y in X .. (Y-1) loop
        null;
        Dot(Buf, Pt(P.X + X, P.Y + Count_Y), 1, Clr);             --1
        Dot(Buf, Pt(P.X - X, P.Y + Count_Y), 1, Clr);             --2
        Dot(Buf, Pt(P.X - Count_Y, P.Y + X), 1, Clr);             --3
        Dot(Buf, Pt(P.X - Count_Y, P.Y - X), 1, Clr);             --4
        Dot(Buf, Pt(P.X - X, P.Y - Count_Y), 1, Clr);             --5
        Dot(Buf, Pt(P.X + X, P.Y - Count_Y), 1, Clr);             --6
        Dot(Buf, Pt(P.X + Count_Y, P.Y - X), 1, Clr);             --7
        Dot(Buf, Pt(P.X + Count_Y, P.Y + X), 1, Clr);
      end loop;
      if Esp < 0 then
        Esp := Esp+ ( 4 * X + 6);
      else
        Esp :=  Esp + (10 + 4 *(X - Y ));
        Y := Y - 1;
      end if;
      X := X+1;
    end loop;
  end Fill_Circle;

  procedure Draw_Char
    (Buf        : Buffer_Ref;
     X, Y       : Natural;
     Ch         : Character;
     Font_Ref   : Font_Access;
     Fgnd, Bgnd : Color)
  is
    Value : Unsigned_8;
    Size, Offset : Natural;
    Mask : constant Unsigned_8 := 16#80#;
    Masked_Value: Unsigned_8;
  begin
    if Font_Ref.Width mod 8 = 0 then
      Size := Font_Ref.Height * (Font_Ref.Width / 8);
    else
      Size := Font_Ref.Height * (Font_Ref.Width / 8 + 1);
    end if;

    Offset := (Character'Pos(Ch) - Character'Pos(' ')) * size;

    Value :=  Font_Ref.Data(Offset);

    for Page in 0 .. (Font_Ref.Height-1) loop
      Column_Loop:
      for Column in 0 .. (Font_Ref.Width-1) loop
        Masked_Value := Value and (Shift_Right(Mask, Column mod 8)) ;
        if Bgnd = Black then
          if Masked_Value /= 0 then
            Set(Buf, Pt(X + Column, Y + Page), Fgnd);
          end if;
        else
          if Masked_Value /= 0 then
            Set(Buf, Pt(X + Column, Y + Page), Fgnd);
          else
            Set(Buf, Pt(X + Column, Y + Page), Bgnd);
          end if;
        end if;
        if Column mod 8 = 7 then
          Offset := Offset + 1;
          Value :=  Font_Ref.Data(Offset);
        end if;
      end loop Column_Loop;
      if Font_Ref.Width mod 8 /= 0 then
        Offset := Offset + 1;
        Value :=  Font_Ref.Data(Offset);
      end if;
    end loop;
  end Draw_Char;


  procedure Put
    (Buf : Buffer_Ref;
     P   : Point;
     Ch  : Character;
     Size: Positive;
     Fgnd: Color:= White;
     Bgnd: Color:= Black)
  is
    F : Font_Access;
  begin
    F := Bitmap_Graphics.Get_Font(Size);
    Draw_Char(Buf, P.X, P.Y, Ch, F, Fgnd, Bgnd);
  end Put;

  procedure Draw_Str
    (Buf     : Buffer_Ref;
     P       : Point;
     Str     : String;
     Font_Ref: Font_Access;
     Fgnd    : Color:= White;
     Bgnd    : Color:= Black)
  is
    X : Natural := P.X; -- Current x position
    Y : Natural := P.Y; -- Current y position
  begin

    for I in 1 .. Str'Last loop
      -- if the X direction is filled, then continue at next line
      if (X + Font_Ref.Width) > Width then
        X := P.X;
        Y := Y + Font_Ref.Height;
      end if;
      -- If the Y direction is full, reposition to P
      if (Y + Font_Ref.Height) > Height then
        X := P.X;
        Y := P.Y;
      end if;
      Draw_Char(Buf, X, Y, Str(I), Font_Ref, Fgnd, Bgnd);
      X := X + Font_Ref.Width;
    end loop;
  end Draw_Str;

  -- Draw a string into the graphics buffer.
  procedure Put
    (Buf : Buffer_Ref;
     P   : Point;
     Str : String;
     Size: Positive;
     Fgnd: Color:= White;
     Bgnd: Color:= Black)
  is
    F : Font_Access;
  begin
    F := Get_Font(Size);
    Draw_Str(Buf, P, Str, F, Fgnd, Bgnd);
  end Put;

  procedure Draw_Num
    (Buf        : Buffer_Ref;
     X, Y       : Natural;
     Num        : Natural;
     Font_Ref   : Font_Access;
     Fgnd, Bgnd : Color)
  is
    Str     : String(1..128);
    Pos     : Positive := 1;
    Rev_Str : String(1..128);
    Rev_Pos : Positive := 1;
    Number  : Integer := Num;
  begin
    -- Converts a number to a string
    while Number > 0 loop
      Rev_Str(Rev_Pos) := Character'Val(Number mod 10 + Character'Pos('0'));
      Rev_Pos := Rev_Pos + 1;
      Number := Number / 10;
    end loop;
    -- The string is inverted
    while Rev_Pos > 1 loop
      Str(Pos) := Rev_Str(Rev_Pos-1);
      Pos := Pos + 1;
      Rev_Pos := Rev_Pos -1;
    end loop;
    Draw_Str(Buf, Pt(X, Y), Str(1.. (Pos-1)), Font_Ref, Fgnd, Bgnd);
  end Draw_Num;

  -- Draw a number into the graphics buffer.
  procedure Put
    (Buf : Buffer_Ref;
     P   : Point;
     Num : Natural;
     Size: Positive;
     Fgnd: Color:= White;
     Bgnd: Color:= Black)
  is
    F : Font_Access;
  begin
    F := Get_Font(Size);
    Draw_Num(Buf, P.X, P.Y, Num, F, Fgnd, Bgnd);
  end Put;

  procedure Bitmap
    (Buf   : Buffer_Ref;
     P     : Point;
     Bytes : Byte_Array_Access;
     Siz   : Size)
  is
    Byte_Width : Natural := (Siz.Width + 7)/8;
    Byte : Unsigned_8;
    Mask : Unsigned_8;
    Masked_Value : Unsigned_8;
  begin
    for J in 0 .. (Siz.Height-1) loop
      for I in 0 .. (Siz.Width-1) loop
        Byte := Bytes(J * Byte_Width + I / 8);
        Mask := Shift_Right(128, I mod 8);
        Masked_Value := Byte and Mask;
        if Masked_Value /= 0 then
          Dot(Buf, Pt(P.X + I, P.Y + J));
        end if;
      end loop;
    end loop;
  end Bitmap;

  procedure Bitmap
    (Buf   : Buffer_Ref;
     P     : Point;
     Icon  : Bitmap_Icon)
  is
    Width  : Natural;
    Height : Natural;
    Data   : Byte_Array_Access;
  begin
    Get_Icon(Icon, Width, Height, Data);
    Bitmap(Buf, P, Data, (Width, Height));
  end;



end Bitmap_Buffer;
