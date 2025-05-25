newline=$'\n'

unameS=`whoami`
echo "${newline}"

echo "Hello User ${unameS}, Selamat Datang...!"


echo "${newline}"

echo "==============System Info================"

echo "${newline}"

echo "+Operating System+"
distro=`lsb_release -d | cut -d: -f2- | sed 's/^\t//' ` 
kernel_v=`uname -sr`

echo "Distro: ${distro}"
echo "Kernel Version: ${kernel_v}"

echo "${newline}"

echo "+Central Processing Unit+"
CPU=`lscpu | head`

echo "CPU Info: ${CPU}" 

echo "${newline}"

echo "+Random Access Memory+"
myRAM=$(sudo dmidecode -t memory | grep -m1 -A5 -E '^\s+(Size|Type|Manufacturer|Form Factor|Memory Technology):' | grep -v 'Unknown\|No Module Installed' | sed 's/^\s\+//')

echo "$myRAM" | column -t -s ':'

echo "${newline}"

echo "========================================="