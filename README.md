# RPi-Soft-Power-Button
Raspberry Pi Power Button that triggers the "shutdown now" command when the Raspberry Pi is running 
and a pulse to the "Run" pin (p6) when it is not running.

It uses 2 raspberry pi GPIO pins, a NAND logic IC and 2 pull down resistors.

![Circuit using the 74HC132 IC](https://www.dropbox.com/s/bjusklx78ebmc5q/Bestand%2003-07-17%2018%2042%2035.jpeg?dl=1)

The IC can be a 74HC00 or 74HC132. We only need 2 of the 4 dual input NAND gates and need to operate at 3.3 volts.

# The Wiring
![Wiring](https://raw.githubusercontent.com/joostmarkerink/RPi-Soft-Power-Button/master/IMG_0406.PNG)

# Installing

The bash script uses WiringPi to access the GPIO pins. 
Installation instructions for wiring pi are shown here: http://wiringpi.com/download-and-install/ .

download the bashscript:
```sh 
wget "https://raw.githubusercontent.com/joostmarkerink/RPi-Soft-Power-Button/master/softShutDown.sh"
```
make it executable:
```sh 
chmod 755 softShutDown.sh
```

Make the script run at startup:
```sh 
sudo nano /etc/rc.local
```

add the folowing line somewhere before "exit 0":
```sh 
sudo /home/pi/softShutDown.sh &
```
ctrl+x then Y to save and exit

test it:
```sh
sudo shutdown now
```

when the Raspberry Pi stopped blinking its LEDS press the button and it should boot!
And after it is booted, press the button again and it should shutdown the Pi!

