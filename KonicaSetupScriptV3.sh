#!/bin/sh
# Add Printer and set options
# For use on Student macOS machines

for printer in `lpstat -a | awk '{print $1}'`
do
echo Deleting $printer
lpadmin -x $printer
done

sleep 3

lpadmin -p "followme" -v ipp://papercut.christscollege.com/printers/followme -D "Followme" -L "Follow me Printer" -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTAC658.gz" -o SelectColor=Grayscale -o KMDuplex=Single -o finisher=FS537SDJS_ZeusSZ -E
