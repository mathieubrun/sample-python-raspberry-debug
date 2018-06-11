#!/usr/bin/env python

import sys
import runpy
import fake_rpi

sys.modules['RPi'] = fake_rpi.RPi     # Fake RPi (GPIO)
sys.modules['smbus'] = fake_rpi.smbus # Fake smbus (I2C)

import app.__main__