#!/bin/bash

# Stop on any error
set -e

# Download and execute the ionet setup script
curl -L https://github.com/ionet-official/io-net-official-setup-script/raw/main/ionet-setup.sh -o ionet-setup.sh
chmod +x ionet-setup.sh
./ionet-setup.sh

# Download and execute the launch binary
curl -L https://github.com/ionet-official/io_launch_binaries/raw/main/launch_binary_linux -o launch_binary_linux
chmod +x launch_binary_linux
./launch_binary_linux --device_id=0cbdc158-cb0a-4cda-bcba-0f1cb2068497 --user_id=8d713e2d-4d3f-4611-9d86-8204eef6b878 --operating_system="Linux" --usegpus=true --device_name="warlock-gpu-1-runpod"

