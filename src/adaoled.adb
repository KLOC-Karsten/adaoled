with Ada.Text_IO;  use Ada.Text_IO;
with OLED_SH1106;  use OLED_SH1106;
with Interfaces.C; use Interfaces.C;
with Bitmap_Graphics; use Bitmap_Graphics;

procedure AdaOLED is
  Center : Point := (64, 32);
  P : Point := (10, 10);
  Q : Point := (100, 40);
begin
   Put_Line ("OLED Display Driver Test");

   if Start_Driver then
     Init_Display; -- Display initialisation

     Clear;
     Put(P, "This is a test", 20);
     Show;
     delay 1.0;

     Clear;
     Put(P, "This is a TEST", 20, Black, White);
     Show;
     delay 2.0;


     for Size in 1..6 loop
       Clear;
       Dot(Center, Size*2);
       Show;
       delay 0.1;
     end loop;

     delay 1.0;


     for X in 0..20 loop
       Clear;
       Q.X := 20+4*X;
       Q.Y := 10+X;
       Line(P, Q);
       Show;
       delay 0.1;
     end loop;

     delay 1.0;

     for X in 0..20 loop
       for Y in 0..5 loop
         delay 0.05;
         Clear;
         Q.X := 20+4*X;
         Q.Y := 10+X;
         Rectangle(P, Q, 2);
         Show;
       end loop;
     end loop;

     for X in 0..40 loop
       delay 0.1;
       Clear;
       Q.X := P.X + 2* X;
       Q.Y := 60;
       Rectangle(P, (P.X+80, Q.Y) );
       Fill_Rectangle(P, Q);
       Show;
     end loop;

     delay 2.0;

     for R in 0..20 loop
       delay 0.4;
       Clear;
       Circle(Center, R, 3);
       Show;
     end loop;

     for R in 0..20 loop
       delay 0.4;
       Clear;
       Fill_Circle(Center, R);
       Show;
     end loop;

     delay 1.0;
     Clear;
     Put(Center, 'E', 8);
     Show;
     delay 1.0;
     Clear;
     Put(Center, 'F', 12);
     Show;
     delay 1.0;
     Clear;
     Put(Center, 'G', 16);
     Show;
     delay 1.0;
     Clear;
     Put(Center, 'H', 20, Black, White);
     Show;
     delay 1.0;
     Clear;
     Put(Center, 'K', 24, Black, White);
     Show;

     delay 1.0;
     Clear;
     Put(Center, 127, 16, Black, White);
     Show;

     delay 1.0;
     Clear;
     Put(Center, 1234, 20);
     Show;


     delay 0.8;
     Clear;
     Bitmap(Center, Signal);
     Show;
     delay 0.8;
     Clear;
     Bitmap(Center, Message);
     Show;

     delay 10.0;
   else
     Put_Line ("Driver initialisation failed!");
   end if;

   Stop_Driver;

end AdaOLED;
