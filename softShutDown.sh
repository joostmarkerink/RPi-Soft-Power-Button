#!/bin/bash

gpio mode 7 out
gpio write 7 1
gpio mode 0 in

gpio wfi 0 rising

shutdown now
