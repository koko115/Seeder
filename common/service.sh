#!/system/bin/sh

# Seeder Boot Service
# koko115 @ xdadevelopers

#!/system/bin/sh

killall qrngd

sleep 15

killall qrngd

sleep 2

killall rngd

sleep 2

rngd -t 2 -T 1 -s 256 --fill-watermark=80%
sleep 2
echo -8 > /proc/$(pgrep rngd)/oom_adj
renice -n 5 `pidof rngd`