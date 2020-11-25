with Interfaces; use Interfaces;

package OLED_SH1106.Display is

  OLED_RST      : constant Unsigned_16 := 25;
  OLED_DC       : constant Unsigned_16 := 24;
  OLED_CS       : constant Unsigned_16 := 8;
  KEY_UP_PIN    : constant Unsigned_16 := 6;
  KEY_DOWN_PIN  : constant Unsigned_16 := 19;
  KEY_LEFT_PIN  : constant Unsigned_16 := 5;
  KEY_RIGHT_PIN : constant Unsigned_16 := 26;
  KEY_PRESS_PIN : constant Unsigned_16 := 13;
  KEY1_PIN      : constant Unsigned_16 := 21;
  KEY2_PIN      : constant Unsigned_16 := 20;
  KEY3_PIN      : constant Unsigned_16 := 16;

  procedure Reset;
  procedure Write_Reg(Reg: Unsigned_8);
  procedure Start_Data;
  procedure Write_Data(Data: Unsigned_8);

  procedure Init_Reg;

  function Module_Init return Boolean;

end OLED_SH1106.Display;
