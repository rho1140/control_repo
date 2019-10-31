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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCjLyKxAJqfhi2htQcVTYryzFPYjhPb2MlwDxu5x3ETZldV8F3auNZdb7xFN0WPcxhBY5DoT5/azHxfwJb7vtiNmmCs97A8e9sI+e8qT/hgkgkMMJOZf3rmAfDfOvnM1E0E3Mblv38w+u/BGYA37RlhCi/FLEvI25eFHxCNDuiAXwXw5HK4OY7JloOR2x3WX2Nw8H8yJUCFOEnMb40E1n7FenjmqMBfo/zzxUJlBUl4S87XStsFjsguIGd5qLDpfe1Hv1cpbvKFb4xS7uTkulol5gIYrptK4LW5duJa+Bm0BflH5P/f2NZPzMINeLYIu3YvLko1Gz6RMdrH8L/4iZ29',
	}  
}
