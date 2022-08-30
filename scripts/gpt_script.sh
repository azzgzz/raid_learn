echo Provisioning gpt script

sudo yum install -y gdisk

for i in {1..5} ; do 
	sgdisk -n ${i}:0:+100M /dev/sdb; 
done 

lsblk > /var/log/raid_logs/gpt_init.out

echo GPT script done!