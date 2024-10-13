sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p epb -e work.shop
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org assign permset -n EPB
sf data import tree  -p data/Contact-Reservation__c-plan.json -d data/
sf org open -p /lightning/o/Reservation__c/list?filterName=All
