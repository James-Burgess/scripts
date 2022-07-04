## TODO find a good way to manage gpg keys????


function install_keys(){
	echo "installing deps"

	sudo apt-get update -Yqq
	sudo apt-get install git gnupg rng-tools -y


	echo "installing yubikey manager"
	sudo apt install yubikey-manager -y

	echo "grabbing keys"
}
