
with Interfaces; use Interfaces;
with Interfaces.C; use Interfaces.C;

package GPIO is

  function Init return Unsigned_8;
  pragma Import (C, Init, "bcm2835_init");

  procedure Close;
  pragma Import (C, Close, "bcm2835_close");

  procedure Write(Pin: Unsigned_16; Value: Unsigned_8);
  pragma Import (C, Write, "bcm2835_gpio_write");

  MODE_INPUT  : Unsigned_8 := 0;
  MODE_OUTPUT : Unsigned_8 := 1;

  procedure Set_Mode(Pin: Unsigned_16; Value: Unsigned_8);
  pragma Import (C, Set_Mode, "bcm2835_gpio_fsel");



end GPIO;
