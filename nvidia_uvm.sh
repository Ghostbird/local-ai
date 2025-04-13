#!/bin/sh
# Run this if docker access to GPUs is interrupted after the machine was woken from suspend mode.

sudo rmmod nvidia_uvm && sudo modprobe nvidia_uvm
