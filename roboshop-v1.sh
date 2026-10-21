#!/bin/bash/

ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
domain_name="ryomen.site"
hosted_zone_id="Z02110672ALYZKT1XVCNS"

for instance in $@
do 
    echo "Creating instance: $instance"
done
