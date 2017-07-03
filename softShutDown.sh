#!/bin/bash

gpio mode 7 out
gpio mode 0 in
gpio write 7 1
gpio wfi 0 rising

shutdown now
