#!/usr/bin/env bash

for z in `knife ec2 server list | grep micro | awk '{print $3}'` 
do 
  echo $z 
  ssh -i ~/.ssh/cms_aws_3.pem ubuntu@$z sudo crontab -l
done



