echo Provisioning raid script

sudo yum install -y mdadm

mdadm --create /dev/md10 --level=10 --raid-devices=4 /dev/nvme0n[1-4]

cat /proc/mdstat > /var/log/raid_logs/raid10_init.out

echo Raid script done!