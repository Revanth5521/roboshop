#!/bin/bash

# Get CPU idle percentage and calculate utilization
cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
cpu_usage=$(echo "100 - $cpu_idle" | bc)

echo "CPU Utilization: $cpu_usage %"
