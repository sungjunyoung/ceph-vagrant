#!/bin/bash
value=$( grep -ic "entry" /etc/hosts )
if [ $value -eq 0 ]
then
echo "
################ ceph-cookbook host entry ############

192.168.56.101 ceph-node1
192.168.56.102 ceph-node2
192.168.56.103 ceph-node3
192.168.56.104 ceph-node4
192.168.56.115 ceph-node5
192.168.56.116 ceph-node6
192.168.56.117 ceph-node7
192.168.56.118 ceph-node8

192.168.56.106 rgw-node1.cephcookbook.com rgw-node1
192.168.56.107 us-east-1.cephcookbook.com us-east-1 
192.168.56.108 us-west-1.cephcookbook.com us-west-1
192.168.56.110 client-node1
192.168.56.111 os-node1.cephcookbook.com os-node1
192.168.56.120 owncloud.cephcookbook.com owncloud

######################################################
" >> /etc/hosts
fi

# enable password authentication
sed -i -e 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart sshd

# install ntp ntpdate
yum install ntp ntpdate -y
ntpdate pool.ntp.org
systemctl restart ntpdate.service
systemctl restart ntpd.service
systemctl enable ntpd.service
systemctl enable ntpdate.service

# disable firewall
systemctl disable firewalld

# install git
yum install git -y