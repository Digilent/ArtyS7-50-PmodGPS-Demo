ArtyS7-50 PmodGPS Demo
==============

Created for Vivado 2019.1


The demo program continuously prints location data provided by the PmodGPS. That
data is formatted as follows:

- Latitude:
- Longitude:
- Altitude:
- Number of Satellites:

To set up the demo you will need to open a serial terminal, such as TeraTerm, to
see the data being printed out.
Apply the following settings:
-Baud rate: 9600
-Data bits: 8
-Parity:    none
-Stop bits: 1

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


To re-create a Vivado project:

0. Make sure the directory ./proj does not already contain a project with the same name. 
   You may run cleanup.cmd to delete everything except the utility files.
1. Open either the Vivado Tcl shell or the Tcl Window in Vivado GUI 
2. cd to the directory where you want the project created. 
   For example: <repo>/proj
3. run: 
> source ./create_project.tcl 
