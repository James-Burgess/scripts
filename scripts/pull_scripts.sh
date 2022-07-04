function pull_scripts() {
	# clone scripts into folder
	mkdir -p $HOME/scripts
	git clone git@github.com:James-Burgess/scripts.git $HOME/scripts
}
