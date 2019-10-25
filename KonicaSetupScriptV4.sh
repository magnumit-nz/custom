#!/bin/sh
# Add Printer and set options
# For use macOS machines - tested on 10.13 and higher

#We want to start with a clean slate so we're clearing out old printers
for printer in `lpstat -a | awk '{print $1}'`
do
echo Deleting $printer
lpadmin -x $printer
done

sleep 3

echo adding the followme printer with grayscale defaults

#Add new printer with grayscale defaults
lpadmin -p "followme" -v ipp://_YOUR_PRINT_SERVER_/printers/followme -D "Followme" -L "Follow me Printer" -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTAC658.gz" -o SelectColor=Grayscale -o ColorModel=Gray -o KMDuplex=Single -o finisher=FS537SDJS_ZeusSZ -E
