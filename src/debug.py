import ptvsd
import time
import os
import sys

print("Waiting to attach")

address = ('0.0.0.0', 3000)
ptvsd.enable_attach('my_secret', address)
ptvsd.wait_for_attach()

import app.__main__

print("end")