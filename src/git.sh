git_install()
{
	read -p "Enter the email that you want to set for Git and press [ENTER]: " email
	echo 'Setting git global values'
	git config --global user.name "Jose Chirivella"
	git config --global user.email "$email" 
	git config --global init.defaultBranch main
}

git_install
