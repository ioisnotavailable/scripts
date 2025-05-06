#!/bin/bash
if [[ $(id -u) -ne 0 ]]; then
	echo "Root olarak çalıştır"
	exit 1
fi
echo 'Güncelleme başlıyor.'
echo '################################################################'
sudo apt update && sudo apt upgrade -y
echo '################################################################'
echo ''
echo ''
echo 'Güncelleme bitti.'

