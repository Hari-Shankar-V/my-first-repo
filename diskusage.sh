!/bin/bash
diskusage=$(df -kh . | awk -F " " '{print$5}' | tail -1 | sed 's/%/ /g')
 
if [ $diskusage -le 70 ]
then
  echo "The disk utilization is $diskusage i.e.,  within limit"
else 
  echo "The disk utilization is $diskusage i.e., beyond limit, please take action"
fi
