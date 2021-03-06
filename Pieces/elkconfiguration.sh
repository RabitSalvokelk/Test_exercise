#!/bin/bash

#define variables for use
clustername="elk-cluster"
nodename="elk02"
networkhost="172.19.175.131"
networkport="9200"

#append variables to file with relevant configuration settings
{
echo 'cluster.name: '$clustername''								
echo 'node.name: '$nodename''							
echo 'node.data: true'								
echo 'network.host: '$networkhost''									
echo 'http.port: '$networkport''								
echo 'discovery.zen.ping.unicast.hosts: ['"192.168.9.2"','"192.168.9.3"','"192.168.9.4"']'	
echo 'discovery.zen.minimum_master_nodes: 2'			
}	 >> /etc/elasticsearch/elasticsearch.yml
sudo systemctl restart elasticsearch
sudo systemctl enable elasticsearch
