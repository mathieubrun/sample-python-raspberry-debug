import ptvsd
import time
import os
import sys

print("Waiting to attach.")

address = ('0.0.0.0', 3000)
ptvsd.enable_attach('my_secret', address)
ptvsd.wait_for_attach()

# wait a little bit for debugger to attach on client
# https://github.com/Microsoft/vscode-python/issues/819#issuecomment-366540663
time.sleep(3)
print("Done waiting. Starting program.")

import app.__main__

print("Done debugging.")