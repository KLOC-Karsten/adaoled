with Interfaces; use Interfaces;
with Interfaces.C; use Interfaces.C;

package SPI is

  MODE0: constant Integer := 0;
  BIT_ORDER_MSBFIRST: constant Integer := 1;
  CLOCK_DIVIDER_128: constant Integer := 128;
  CS0: constant Integer := 0;

  LOW: constant Integer := 0;

  procedure Start;
  pragma Import (C, Start, "bcm2835_spi_begin");


  procedure Stop;
  pragma Import (C, Stop, "bcm2835_spi_end");


  procedure Set_Bit_Order(Order: Integer);
  pragma Import (C, Set_Bit_Order, "bcm2835_spi_setBitOrder");

  procedure Set_Data_Mode(Order: Integer);
  pragma Import (C, Set_Data_Mode, "bcm2835_spi_setDataMode");

  procedure Set_Clock_Divider(Order: Integer);
  pragma Import (C, Set_Clock_Divider, "bcm2835_spi_setClockDivider");

  procedure Set_Chip_Select(A: Integer);
  pragma Import (C, Set_Chip_Select, "bcm2835_spi_chipSelect");

  procedure Set_Chip_Select_Polarity(A, B: Integer);
  pragma Import (C, Set_Chip_Select_Polarity, "bcm2835_spi_setChipSelectPolarity");

  procedure Write(Data: Unsigned_8);
  pragma Import (C, Write, "bcm2835_spi_transfer");



end SPI;
