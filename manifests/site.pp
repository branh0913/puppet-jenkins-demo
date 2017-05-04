class apache::install{
  if $::osfamily == "centos"{
    package{'httpd':
       ensure => present
    }
  }
  elsif $::osfamily == "ubuntu"{
    package{'apache2':
       ensure => present
    }
  }
}


include apache::install
