class apache::install{
   package{'httpd':
      ensure => present
   }
}

include apache::install
