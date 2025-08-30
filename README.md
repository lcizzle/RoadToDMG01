# Project - Road to DMG-01

## Description
Project - Road to DMG-01 is an adventure from FPGA / Verilog Zero to a full implementation of an Game Boy DMG-01 in an FPGA written in Verilog. Here I will keep a codex of sorts from the 0% to the 100%.


## Initial Setup
I have 4 FPGA boards available for this project. 

* SiPEED Tang Nano 9K
* SiPEED Tang Primer 20K with Board Ext and Board Lite
* Terasic DE-10 Lite
* Terasic DE-10 Nano.

I'm not 100% sure what the target board will be yet but I am leaning in the direction of SiPEED Tang Nano 9K or 20K because they are more affordable and more accessible to everyone. The DE-10 Lite is probably the best board to learn on out of the four, because of the various onboard items like buttons, switches, 7 segment leds, Arduino Shield, huge GPIO port but at the same time it also comes with a weird tooling burden of Quartus Prime that requires a certain veresion for everything to function and it not being a full featured version. GoWin EDA, used with the SiPEED Tang Nano products is decent but lacks simulation capabilities. Luckily Altair has a product called DSim Studio that is fully featured and free but limited to 1 simulation job or something like that. 

If anyone above, GoWin, SiPEED, Terasic, and/or Altair would like to sponsor this project please let me know!

# Date: 08/28/2025
* Repo Setup
* Project Setup (There will probably be more than one)
* This readme, probably the most time consuming part of the whole project.
* Installed Quartus Prime
* Tested Quartus Prime - Working
* Tested ModelSim - Working
* DE-10 Lite board test - Working
* DE-10 Nano board test - Working
* Installed GoWin EDA
* Tested GoWin EDA - Working
* Installed Altair DSim Studio
* Altair DSim Studio Tutorial Project - Completed
* GoWin DSim Studio Tutorial Project - Completed
* Tested Altair DSim Studio - Working
* Set Quartus Prime and GoWin EDA to use Visual Studio Code for the editor with DSim Studio and Verilog-HDL Plugins
* Added STN9KExploration Project
* Added Enable LED 01 Design
* Added Blink LED 01 Design
* Added Knight Rider LED 01 Design
* Added AND Gate LED 01 Design
* Added Basic Gates LED 01 Design
* Added Seven Segment Decoder 01 Design
* Added UART TX 01 Design

# Date: 08/29/2025
* Added BSRAM LED 01 Design
* Added SSRAM LED 01 Design

# Date: 08/30/2025
* Added SUBLEQ CPU 01 Design
* Added Altair DSim test benches for the following...
    * m_buffer_gate_01
    * m_and_gate_01


# Note: Going to start adding some test benches. Altair DSim takes a little bit of setup so I may not use it immediately. I have a version of ModelSim installed along side Quartus Prime so i'll probably use that initially. Should also look up some open source Simulators but haven't had time to research them.

# Note: I wasn't going to add constraint files as to force myself to practice. If I revisited any projects I would need to recreate the various constraint files. I assumed this would help me remember to not forget constraint files in the future but in practice slightly annoying and not realisitic to force other people that view the repository to be able to recreate them. So now each Design will have constraint files and all you need to do is enable/disable the verilog file(s) and the constraint. For example. Enable LED 01 Design, enable enable_led_01_top.v and enable enable_led_01.cst constraint file.

# Note: That should be the last "reorganization" of projects. I could technically put a number like 0 in front and order them in the order I wrote / learned but the ProjectsList.txt and dates in the readme are keeping the order.