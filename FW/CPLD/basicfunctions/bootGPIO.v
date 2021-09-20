//Boot GPIO muxplex Driver 
//CPLD configure CPLD pins connected to dsp boot pins (GPIO[3..0])
//1. When dsp boot up (some instance before and after dsp power on),
//   the CPLD pins should be configured to GPIO[3..0] = 0b0011
//   Serial (SPI) EPROM Boot (16-bit address) via McBSP0
//2. After that, the CPLD pins should be configured as inout 

