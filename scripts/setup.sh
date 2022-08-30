#!/bin/bash


install_packer() { 
	test -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim || 
		git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
} 

function check_dependency() {
	dep=$1
	type -P "$dep" > /dev/null && echo "$dep is installed." || 
		echo "WARNING: $dep is not installed.  Please install for reasonable setup."
}

install_packer
echo "Check that packer.nvim is installed by running :PackerCompile"

dependencies=("rg"  "python" "python3") 
for d in ${dependencies[@]}; do
	check_dependency $d 
done
