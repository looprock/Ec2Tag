#!/bin/sh
export EC2_INSTANCE_ID=`curl -s http://169.254.169.254/latest/meta-data/instance-id`
export EC2_AVAIL_ZONE=`curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone`
export EC2_REGION="`echo \"$EC2_AVAIL_ZONE\" | sed -e 's:\([0-9][0-9]*\)[a-z]*\$:\\1:'`"
export SYSTEMTYPE=`/usr/local/bin/ec2tag systemtype`
