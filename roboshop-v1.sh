#!/bin/bash/

ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
domain_name="ryomen.site"
hosted_zone_id="Z02110672ALYZKT1XVCNS"

for instance in $@
do 
    echo "Creating instance: $instance"
    
     instance_id=$(aws ec2 run-instances \
            --image-id $ami_id \
            --instance-type $instance_type \
            --security-groups "Roboshop-common" "roboshop-$instance" \
            --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=roboshop-$instance}]" \
            --query 'Instances[0].InstanceId' \
            --output text
    )

    echo "$instance instance_ID: $instance_id"
done
