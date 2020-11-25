
with GPIO;
with SPI;
with Interfaces; use Interfaces;
with Ada.Text_IO;

package body OLED_SH1106.Display is


  procedure Reset is
  begin
    GPIO.Write(OLED_RST, 1);
    delay 0.1;
    GPIO.Write(OLED_RST, 0);
    delay 0.1;
    GPIO.Write(OLED_RST, 1);
    delay 0.1;
  end Reset;

  procedure Write_Reg(Reg: Unsigned_8) is
  begin
      GPIO.Write(OLED_DC, 0);
      SPI.Write(Reg);
  end Write_Reg;

  procedure Start_Data is
  begin
    GPIO.Write(OLED_DC, 1);
  end Start_Data;

  procedure Write_Data(Data: Unsigned_8) is
  begin
    SPI.Write(Data);
  end Write_Data;


  procedure Init_Reg is
  begin
      Write_Reg(16#AE#); -- --turn off oled panel
      Write_Reg(16#02#); -- ---set low column address
      Write_Reg(16#10#); -- ---set high column address
      Write_Reg(16#40#); -- --set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
      Write_Reg(16#81#); -- --set contrast control register
      Write_Reg(16#A0#); -- --Set SEG/Column Mapping
      Write_Reg(16#C0#); -- Set COM/Row Scan Direction
      Write_Reg(16#A6#); -- --set normal display
      Write_Reg(16#A8#); -- --set multiplex ratio(1 to 64)
      Write_Reg(16#3F#); -- --1/64 duty
      Write_Reg(16#D3#); -- -set display offset    Shift Mapping RAM Counter (0x00~0x3F)
      Write_Reg(16#00#); -- -not offset
      Write_Reg(16#d5#); -- --set display clock divide ratio/oscillator frequency
      Write_Reg(16#80#); -- --set divide ratio, Set Clock as 100 Frames/Sec
      Write_Reg(16#D9#); -- --set pre-charge period
      Write_Reg(16#F1#); -- Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
      Write_Reg(16#DA#); -- --set com pins hardware configuration
      Write_Reg(16#12#);
      Write_Reg(16#DB#); -- --set vcomh
      Write_Reg(16#40#); -- Set VCOM Deselect Level
      Write_Reg(16#20#); -- -Set Page Addressing Mode (0x00/0x01/0x02)
      Write_Reg(16#02#); --
      Write_Reg(16#A4#); --  Disable Entire Display On (0xa4/0xa5)
      Write_Reg(16#A6#); --  Disable Inverse Display On (0xa6/a7)
  end Init_Reg;


  procedure Init_GPIOs is
  begin
      GPIO.Set_Mode(OLED_RST,      GPIO.MODE_OUTPUT);
      GPIO.Set_Mode(OLED_DC,       GPIO.MODE_OUTPUT);
      GPIO.Set_Mode(OLED_CS,       GPIO.MODE_OUTPUT);
      GPIO.Set_Mode(KEY_UP_PIN,    GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY_DOWN_PIN,  GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY_LEFT_PIN,  GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY_RIGHT_PIN, GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY_PRESS_PIN, GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY1_PIN,      GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY2_PIN,      GPIO.MODE_INPUT);
      GPIO.Set_Mode(KEY3_PIN,      GPIO.MODE_INPUT);
  end Init_GPIOs;

  function Module_Init return Boolean is
  begin
    if GPIO.Init = 0 then
      return false;
    end if;
    Init_GPIOs;
    SPI.Start;
    SPI.Set_Bit_Order(SPI.BIT_ORDER_MSBFIRST);
    SPI.Set_Data_Mode(SPI.MODE0);
    SPI.Set_Clock_Divider(SPI.CLOCK_DIVIDER_128);
    SPI.Set_Chip_Select(SPI.CS0);
    SPI.Set_Chip_Select_Polarity(SPI.CS0, SPI.LOW);
    return true;
  end Module_Init;

end OLED_SH1106.Display;
