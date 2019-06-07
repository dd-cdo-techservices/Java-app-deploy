#!/bin/bash
$key = aws s3 ls s3://dd-cdo-poc/uc1-loginwebapp/target --recursive | sort | tail -n 1 | awk '{print $4}'
aws s3 cp s3://dd-cdo-poc/$key /tmp/LoginWebApps.war
