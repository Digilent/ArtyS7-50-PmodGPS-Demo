# ArtyS7-50 PmodGPS Demo

Created for Vivado 2021.1


The demo program continuously prints location data provided by the PmodGPS. That
data is formatted as follows:

 | Data |
 |---|
| Latitude |
| Longitude |
| Altitude |
| Number of Satellites |

To set up the demo you will need to open a serial terminal, such as TeraTerm, to
see the data being printed out.
Apply the following settings:

| Setting | Value |
|:---:|:---:|
|Baud rate | 9600|
|Data bits| 8 |
|Parity | none |
|Stop bits| 1 |

The user must wait 15 seconds after starting the demo for data to be displayed in the terminal. 

If the PmodGPS fails to connect to the GPS satellites, the demo will only print
out the line for number of satellites.

The demo program uses interrupts, but the Hierarchical Block can also be polled for data. To use
the PmodGPS in polling mode, call the function GPS_getData(), then call the functions
that return the information you want (getLatitude(), getLongitude(), etc.).

The PmodGPS generally has trouble connecting to the satellites while indoors. If
you have connectivity issues, try taking the Pmod outdoors or next to a window.
A way to see if the Pmod has been able to determine its location is to check
the LED on the Pmod. If the Pmod has determined its location, the LED will stay
off; otherwise, the LED will alternate between on and off every second.

---
## Project info

To re-create a Vivado project:

1. The “hw” folder of the cloned root repository contains the sources of the Vivado project used to build the hardware design for the demo. 
2. Make sure the directory ./hw/proj does not already contain a project with the same name. 
   You may run cleanup.cmd to delete everything except the utility files.
3. The Vivado project must be recreated from its source before use. To create the project, first launch the supported version of Vivado1).
 Open Vivado's TCL console, and enter the command below
 
    **set argv ""; source {local root repo}/hw/scripts/digilent_vivado_checkout.tcl**
	
To re-create Vitis project:

1. The Vitis workspace must be recreated from its source before use. To populate workspace, first launch the supported version of Vitis1). 
Use of the local repository's sw/ws folder for the Vitis workspace is recommended, and should be selected as Vitis launches. 
2. Open Vitis's XSCT console (through the Xilinx → XSCT Console menu option), and enter the command below. 
This will recreate the hardware platform, configure its domains, and recreate each application and system project, within the current workspace. 

   **source [getws]/../src/checkout.tcl**
   
For more instructions on how to use this repository with git, and for additional documentation on the submodule and branch structures used, please visit
[Digilent FPGA Demo Git Repositories](https://digilent.com/reference/programmable-logic/documents/git?redirect=1) on the Digilent Wiki.
