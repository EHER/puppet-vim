class vim {
    package { ["vim","make","ruby-dev","exuberant-ctags","ack-grep"]: }
	file {'vimrc_file':
		path    => '/root/.vimrc',
			ensure  => present,
			mode    => 0640,
            source => "puppet:///modules/vim/.vimrc",
	}
}
