chmod+x
#!/bin/sh
dusage=$(df -Ph | grep -vE '^tmpfs|cdrom' | sed s/%//g | awk '{ if($5 > 60) print $0;}')
fscount=$(df -Ph | grep -vE '^Filesystem|tmpfs|cdrom' | sed s/%//g | awk '{ if($5 > 60) print $0;}' | wc -l)
if [ $fscount -ge 2 ]; then
echo "$dusage" | mail -s "Disk Space Alert On $(hostname) at $(date)" example@gmail.com
  fi
