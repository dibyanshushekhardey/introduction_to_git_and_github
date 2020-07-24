#!/usr/bin/env python

import os
import shutil
import sys

def check_reboot():
  """Returns True if the computer has a pending reboot"""
  return os.path.exist("/run/reboot-required")

def check_disk_full(disk, min_absolute, min_percent):
  """Returns True if there isn't enough disk space, False otherwise."""
  du = shutil.disk_usage(disk)
  #Calculate the percentage of free space
  percent_free = 100 * du.free / du.total
  # Calculate how many free gigabytes
  gigabytes_free = du.free / 2**30
  if percent_free < min_percent or gigabytes_free < min_absolute:
    return True
  return False

def main():
  if check_reboot():
    print("Pendong Reboot.")
    sys.exit(1)
  if check_disk_full("/", 2, 10):
    print("Disk full.")
    sys.exit(1)

main()
  pass

main()

