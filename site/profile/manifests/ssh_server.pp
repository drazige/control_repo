class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6houVCMQSy+5GogHWx0Lq5C2ORuCjrm7Yu9Fi+ixx/GiSZ7TcgHz17Qu33ph7mj1JrMhisW2kN7cvxVfqnsI423YaS98iorf0Dbt1V3qONbJyRHoRTOph7dwTCigdG9oFdDqH4gb1ak1T891vHwoevfkE6Mhqr8ygAQ/u63eEy5IWUJJZ/zd1ImWzXaCnQ+YtwmNtv/y8SchrfVxXWpEpRHYpUF07q+jmcivhLOjmqJB6pLR+R/D5RLglqJL+z2pcwqKdAFByn3sbUOsmPzEmTk0VE+LUONctHT5QUhOpMXk4wDmKo2f6LPBZtXyK9cYV781DXiW5KBkWMgNuFEvj',
  }  
}
