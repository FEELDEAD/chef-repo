#!/usr/bin/env bash

for z in `knife ec2 server list | grep micro | awk '{print $3}'` 
do 
  echo $z 
  ssh -i ~/.ssh/cms_aws_3.pem ubuntu@$z sudo chmod -R go+wrx /home/ubuntu/cc/cloud-crawler/logs
  ssh -i ~/.ssh/cms_aws_3.pem ubuntu@$z ls -l /home/ubuntu/cc/cloud-crawler/logs
done



