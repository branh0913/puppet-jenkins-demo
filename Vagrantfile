Vagrant.configure("2") do |config|
  config.vm.define :jenkins_dev do |jenkins|
    jenkins.vm.box = "jenkins"
    jenkins.vm.hostname = "jenkins-dev"
    jenkins.vm.network "private_network", ip: '192.168.50.110'
    jenkins.vm.network "forwarded_port", guest: 8080, host: 9090
    jenkins.vm.provision "shell", inline: "sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D"
    jenkins.vm.provision "shell", inline: "sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'"
    jenkins.vm.provision "shell", inline: "sudo apt-get update"
    jenkins.vm.provision "shell", inline: "sudo apt-get install -y docker-engine"
    jenkins.vm.provision "shell", inline: "gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3", privileged: false
    jenkins.vm.provision "shell", inline: "curl -sSL https://get.rvm.io | bash -s stable --ruby",  privileged: false
    jenkins.vm.provision "shell", inline: "source /home/vagrant/.rvm/scripts/rvm",  privileged: false
    jenkins.vm.provision "shell", inline: "rvm install 2.0.0",  privileged: false
    jenkins.vm.provision "shell", inline: "gem install bundle",  privileged:false
    jenkins.vm.provision "shell", inline: "bundle install .",  privileged: false
  end
end
