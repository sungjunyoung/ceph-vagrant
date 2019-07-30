ceph_node1= 'ceph-node1'
ceph_node1_disk2 = 'ceph-node1/ceph-node1_disk2.vdi'
ceph_node1_disk3 = 'ceph-node1/ceph-node1_disk3.vdi'
ceph_node1_disk4 = 'ceph-node1/ceph-node1_disk4.vdi'

ceph_node2= 'ceph-node2'
ceph_node2_disk2 = 'ceph-node2/ceph-node2_disk2.vdi'
ceph_node2_disk3 = 'ceph-node2/ceph-node2_disk3.vdi'
ceph_node2_disk4 = 'ceph-node2/ceph-node2_disk4.vdi'

ceph_node3= 'ceph-node3'
ceph_node3_disk2 = 'ceph-node3/ceph-node3_disk2.vdi'
ceph_node3_disk3 = 'ceph-node3/ceph-node3_disk3.vdi'
ceph_node3_disk4 = 'ceph-node3/ceph-node3_disk4.vdi'

ceph_node4= 'ceph-node4'
ceph_node4_disk2 = 'ceph-node4/ceph-node4_disk2.vdi'
ceph_node4_disk3 = 'ceph-node4/ceph-node4_disk3.vdi'
ceph_node4_disk4 = 'ceph-node4/ceph-node4_disk4.vdi'

ceph_node5= 'ceph-node5'
ceph_node5_disk2 = 'ceph-node5/ceph-node5_disk2.vdi'
ceph_node5_disk3 = 'ceph-node5/ceph-node5_disk3.vdi'
ceph_node5_disk4 = 'ceph-node5/ceph-node5_disk4.vdi'

ceph_node6= 'ceph-node6'
ceph_node6_disk2 = 'ceph-node6/ceph-node6_disk2.vdi'
ceph_node6_disk3 = 'ceph-node6/ceph-node6_disk3.vdi'
ceph_node6_disk4 = 'ceph-node6/ceph-node6_disk4.vdi'

ceph_node7= 'ceph-node7'
ceph_node7_disk2 = 'ceph-node7/ceph-node7_disk2.vdi'
ceph_node7_disk3 = 'ceph-node7/ceph-node7_disk3.vdi'
ceph_node7_disk4 = 'ceph-node7/ceph-node7_disk4.vdi'

ceph_node8= 'ceph-node8'
ceph_node8_disk2 = 'ceph-node8/ceph-node8_disk2.vdi'
ceph_node8_disk3 = 'ceph-node8/ceph-node8_disk3.vdi'
ceph_node8_disk4 = 'ceph-node8/ceph-node8_disk4.vdi'

client_host= 'client-node1'

Vagrant.configure(2) do |config|
    config.vm.define :"ceph-node1" do |node1|
        node1.vm.box = "centos/7"
        node1.vm.network :private_network, ip: "192.168.56.101"
        node1.vm.network :public_network
        node1.vm.hostname = ceph_node1
        node1.vm.synced_folder ".", "/vagrant", disabled: true
        node1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        node1.vm.provision "shell", path: "init.sh", run: "always"
        node1.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--memory", "1300"]
            v.name = ceph_node1
            v.gui = false
            unless File.exist?(ceph_node1_disk2)
                v.customize ['storagectl', :id, '--name', 'SATA', '--add', 'sata']
                v.customize ['createhd', '--filename', ceph_node1_disk2, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk2]
            end
            unless File.exist?(ceph_node1_disk3)
                v.customize ['createhd', '--filename', ceph_node1_disk3, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk3]
            end
            unless File.exist?(ceph_node1_disk4)
                v.customize ['createhd', '--filename', ceph_node1_disk4, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk4]
            end
        end
    end

    config.vm.define :"ceph-node2" do |node2|
        node2.vm.box = "centos/7"
        node2.vm.network :private_network, ip: "192.168.56.102"
        node2.vm.hostname = ceph_node2
        node2.vm.synced_folder ".", "/vagrant", disabled: true
        node2.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        node2.vm.provision "shell", path: "init.sh", run: "always"
        node2.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--memory", "1300"]
            v.name = ceph_node2
            v.gui = false
            unless File.exist?(ceph_node2_disk2)
                v.customize ['storagectl', :id, '--name', 'SATA', '--add', 'sata']
                v.customize ['createhd', '--filename', ceph_node2_disk2, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk2]
            end
            unless File.exist?(ceph_node2_disk3)
                v.customize ['createhd', '--filename', ceph_node2_disk3, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk3]
            end
            unless File.exist?(ceph_node2_disk4)
                v.customize ['createhd', '--filename', ceph_node2_disk4, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk4]
            end
        end
    end

    config.vm.define :"ceph-node3" do |node3|
        node3.vm.box = "centos/7"
        node3.vm.network :private_network, ip: "192.168.56.103"
        node3.vm.hostname = ceph_node3
        node3.vm.synced_folder ".", "/vagrant", disabled: true
        node3.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        node3.vm.provision "shell", path: "init.sh", run: "always"
        node3.vm.provider "virtualbox" do    |v|
            v.customize ["modifyvm", :id, "--memory", "1300"]
            v.name = ceph_node3
            v.gui = false
            unless File.exist?(ceph_node3_disk2)
                v.customize ['storagectl', :id, '--name', 'SATA', '--add', 'sata']
                v.customize ['createhd', '--filename', ceph_node3_disk2, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk2]
            end
            unless File.exist?(ceph_node3_disk3)
                v.customize ['createhd', '--filename', ceph_node3_disk3, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk3]
            end
            unless File.exist?(ceph_node3_disk4)
                v.customize ['createhd', '--filename', ceph_node3_disk4, '--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk4]
            end
        end
    end

    config.vm.define :"client-node1" do |os|
        os.vm.box = "centos/7"
        os.vm.network :private_network, ip: "192.168.56.110"
        os.vm.hostname = client_host
        os.vm.synced_folder ".", "/vagrant", disabled: true
        os.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        os.vm.provision "shell", path: "init.sh", run: "always"
        os.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--memory", "512"]
            v.name = client_host
            v.gui = false
    end
end
end