# Project - Road to DMG-01

## Description
Project - Road to DMG-01 is an adventure from FPGA / Verilog Zero to a full implementation of an Game Boy DMG-01 in an FPGA written in Verilog. Here I will keep a codex of sorts from the 0% to the 100%.


## Initial Setup
I have 4 FPGA boards available for this project. 

* SiPEED Tang Nano 9K
* SiPEED Tang Primer 20K with Board Ext and Board Lite
* Terasic DE-10 Lite
* Terasic DE-10 Nano.

I'm not 100% sure what the target board will be yet but I am leaning in the direction of SiPEED Tang Nano 9K or 20K because they are more affordable and more accessible to everyone. The DE10 Lite is probably the best board to learn on out of the four, because of the various onboard items like buttons, switches, 7 segment leds, Arduino Shield, huge GPIO port but at the same time it also comes with a massive tooling burden of Quartus Prime that requires a certain version for everything to function and all the features being locked behind an expensive paywall. GoWin EDA, used with the SiPEED Tang Nano products is decent but lacks simulation capabilities. Luckily Altair has a product called DSim Studio that is fully featured and free but limited to 1 simulation job or something like that. Need to explore Open-Source sim tools at some point in the near future.

# Date 09/01/2025

* Repo Reset (Completed)
* Installed GoWin EDA (Completed)
* Replaced GoWin Programmer with SiPEED recommended version (Completed)
* Setup Initial Project(s) (Completed)
* Installed Altera / Intel Quartus Prime (Completed)
* Setup Initial Project(s) (Completed)

# Date 09/02/2025
* Added enable_led_01 design to STN9KExploration
* Added enable_leds_01 design to STN9KExploration
* Added blink_led_01 design to STN9KExploration
* Added blink_leds_01 design to STN9KExploration
* Added knight_rider_leds_01 design to STN9KExploration