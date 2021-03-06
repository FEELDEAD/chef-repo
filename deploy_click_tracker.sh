#!/bin/bash
#
# Copyright (c) 2013 Charles H Martin, PhD
#  
#  Calculated Content 
#  http://calculatedcontent.com
#  charles@calculatedcontent.com
#
AMI_ID="ami-d70c2892"  #"ami-137bcf7a"
INSTANCE_TYPE="m1.small"
SECURITY_GROUPS="chefami" 
RUNLIST="role[click_tracker]"

knife ec2 server create -x ubuntu -I $AMI_ID  -f $INSTANCE_TYPE -G $SECURITY_GROUPS -r $RUNLIST
