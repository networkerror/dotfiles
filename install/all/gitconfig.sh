git config --global user.email "thood@beachbody.com"
git config --global user.name "Tom Hood"
git config --global core.editor vim
git config --global push.default current
git config --global pull.default current

git config --global branch.master.remote origin
git config --global branch.master.merge refs/heads/master

ln -s ~/dotfiles/configs/.gitignore ~/.gitignore
git config --global core.excludesfile '~/.gitignore'

git config --global color.ui auto
git config --global color.interactive auto

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

git config --global alias.l "log --graph --pretty=format:'%C(yellow)%h%C(cyan)%d%Creset %s %C(white)- %an, %ar%Creset'"
git config --global alias.ll "log --stat --abbrev-commit"
