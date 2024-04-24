export ZSH=/home/david/.oh-my-zsh

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
set rpt+=~/.fzf

export PATH=/usr/local/bin:$PATH

## Aliases

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#java
alias jv="java -version"

#Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#gradle
alias gw='./gradlew'
alias gwb='./gradlew build'
alias gwe='./gradlew eclipse'
alias gwce='./gradlew cleanEclipse eclipse'
alias gwbce='./gradlew cleanEclipse build eclipse'
alias gwmp='./gradlew mparse'
alias gwcd='./gradlew cleanDagger'
alias gwpub='./gradlew publishToMavenLocal'
alias gwbt='./gradlew build -x test'
alias gwcj='./gradlew compileJava'
alias gwcecj='./gradlew cleanEclipse eclipse compileJava'

#docker
alias dockerp='docker system prune -a'
alias dockerk='docker kill $(docker ps -q)'
alias dockerls='docker container ls'

#kafka
alias kafka='docker run -p 2181:2181 -p 9092:9092 -e ADVERTISED_HOST=localhost johnnypark/kafka-zookeeper:latest'

#mysql
alias startmysql='sudo services mysql start'

#profile
alias bashp='vim ~/.bash_profile'
alias bashrc='vim ~/.bashrc'
alias zsh='vim ~/.zshrc'

#vim rc
alias vimrc='vim ~/.vimrc'

#vim fzf
alias vimf='vim $(fzf)'

#neovim init.lua
alias nviminit='nvim ~/.config/nvim/init.lua'

#neovim fzf
alias nvimf='nvim $(fzf)'

#source profile
alias srcbash='source ~/.bash_profile'
alias srczsh='source ~/.zshrc'

#git commands
alias gs="git status"
alias gl="git pull"
alias gp="git push"
alias gd="git diff"
alias gf="git fetch"
alias greset="git reset --hard"
alias gadd="git add"
alias gdelete="git branch -D"
alias gcommit="git commit -m"
alias gn="git number"
alias gc="git checkout"
alias gb="git branch"

#misc
alias if="ifconfig | grep 192"
alias ports="lsof -i -P | grep -i 'listen'"
alias dev="cd ~/dev/"

#logiops
alias logstart="sudo systemctl start logid"
alias logstop="sudo systemctl stop logid"
alias logcfg="sudo vim /etc/logid.cfg"

#grub
alias grub='sudo vim /etc/default/grub'
