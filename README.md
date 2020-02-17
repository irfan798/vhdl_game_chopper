# Chopper Game
This is a homework project for ELEC457 
- FPGA-Based System Design Department of Electronics Engineering 
- Gebze Technical University 2018
- Lecturer: Furkan Çaycı


## WARNING
This repo is created for achive purposes. And I dont know if it will work you

# Explanation
Crateded a chopper game Using PYNQ-Z2 FPGA Board and Vivado Studio
Created a kind of FPGA graphics engine, C objects that are stored in RAM has values like width, height, color, shape are controlled from  ARM Cortex A9 inside of FPGA Board with C and then rendered using VHDL and sent to buffer to be transmitted through HDMI.

Check out mini [tutorial](Tutorial.pdf) in turkish to clone project

Check out [demo video](FPGA.mp4)

This project uses IP from [Furkan Cayci](https://github.com/fcayci/xilinx_vga_framebuffer_ip_core) @fcayci

 
 ```c
 struct Obje {
 int  x,y,width,height;
 uint32_t  color;
 uint8_t   type;
};

struct Obje zemin;

zemin.x = 0;
zemin.y = 700;
zemin.width = 1280;
zemin.height = 20;
zemin.type = 8;
zemin.color = 0x00FF00;

 ```
