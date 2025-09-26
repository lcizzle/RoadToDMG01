# Project - Road to DMG-01

## Descirption
Road to DMG-01 is an adventure in Electrical Engineering, FPGAs and HDLs. Starting from zero to a functional Game Boy DMG-01 implemented on an FPGA written in Verilog / SystemVerilog. Here I will keep a codex of sorts from the 0% to the 100%.

## Initial Note

I currently have a handful of FPGA boards available for this project.

* 2 x SiPEED Tang Nano 9K
* 1 x SiPEED Tang Primer 20K with Lite Ext
* 1 x SiPEED Tang Primer 20K with Board Ext
* 1 x Terasic DE10-Lite
* 1 x Terasic DE10-Nano

I'm not 100% sure what the target board will be yet but I am leaning in the direction of SiPEED Tang Nano 9K or 20K because they are more affordable and more accessible to everyone. The DE10 Lite is probably the best board to learn on, because of the various onboard items like buttons, switches, 7 segment leds, Arduino Shield, huge GPIO port but at the same time it also comes with a massive tooling burden of Quartus Prime that requires a certain version for everything to function and all the features being locked behind an expensive paywall. GoWin EDA, used with the SiPEED Tang Nano products is decent but lacks simulation capabilities. Luckily Altair has a product called DSim Studio that is fully featured and free but limited to 1 active simulation job. Need to explore Open-Source sim tools at some point in the near future.

HDL of choice will be Verilog / SystemVerilog. At some point maybe we introduce VHDL but basically all the material I own on the subject of HDLs is Verilog / SystemVerilog based.

## Setup - Tooling

###### Visual Studio Code
* Window Colors
* VSCode Icons
* Dracula Theme
* Markdown All In One
* Markdown Preview Enhanced
* PowerShell
* C/C++
* C/C++ Extension Pack
* C/C++ Compile Run
* TerosHDL
* Surfer
* PlatformIO
* Altair DSim Studio

###### GoWin EDA 
* 1.9.12

###### GoWin Programmer
* 1.9.12
* 1.9.12 SP1

###### SiPEED Programmer
* 1.9.11.02

###### Terasic
* DE10-Lite System Builder
* DE10-Nano System Builder

###### Altair / Intel
Quartus Prime 17.0.2.602 
Quartus Prime 24.1.0.1077

###### Altair 
DSim 2025.1