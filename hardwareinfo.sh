#/bin/bash

echo "Hardware Info"
# CPU
echo "CPU $(cat /proc/cpuinfo | grep 'model name' | uniq)" 
echo "Cores : $(cat /proc/cpuinfo | grep processor | wc -l)" 
echo "Physical cores: $(cat /proc/cpuinfo | grep "physical id" | sort | uniq | wc -l)"

# RAM
echo "RAM : $(dmidecode -t 17 | grep "Size.*MB" | awk '{s+=$2} END {print s / 1024}')G"

# Disk space
echo "Total Disk Space : $(df -h --total | grep 'total' | awk '{print $2}')"
exit 0