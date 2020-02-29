
# try to flash in a loop until the command finishs succesfully
while true; do
  /usr/bin/avrdude -v -p atmega2560 -c wiring -P $(ls /dev/ttyUSB*) -b 115200 -D -U flash:w:$FIRMWARE_HEX:i;
  if [ "$?" -eq "0" ]; then
    break;
  fi;
done;
