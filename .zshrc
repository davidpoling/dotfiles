# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/davidpoling/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias dropthebass="osascript -e 'set volume 10'"
alias stfu="osascript -e 'set volume output muted true'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
set rpt+=~/.fzf

export PATH=/usr/local/bin:$PATH

export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
export JAVA_HOME=$(/usr/libexec/java_home)

export EDITOR=$(which vim)

## Aliases
#location

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#java
alias jv="java -version"
alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

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

#profile
alias bashp='vim ~/.bash_profile'
alias bashrc='vim ~/.bashrc'

#vim rc
alias vimrc='vim ~/.vimrc'

#vim fzf
alias vimf='vim $(fzf)'

#source profile
alias srcbash='source ~/.bash_profile'

#python
alias pss='python -m SimpleHTTPServer' 
alias screenpss='screen python -m SimpleHTTPServer'
alias screenpoly='screen polyserve'
alias httpserver='http-server -c-1 -p 8000'
alias screenhttpserver='screen http-server -c-1 -p 8000'

#polyserve
alias poly="polyserve"

#maven
export PATH=/Users/davidpoling/Maven/apache-maven-3.3.9/bin:$HOME/bin:$PATH

#tomcat
#alias tomcat='cd /usr/local/apache-tomcat-9.0.17'
alias tomcat='cd ~/tomcat/apache-tomcat-9.0.17'
alias tomstart='(tomcat; bin/startup.sh & tail -f logs/catalina.out)'
alias tomstop='(tomcat; bin/shutdown.sh && ps aux|grep tomcat)'
alias tomrestart='(tomstop;tomstart)'

#To kill Tomcat completely
    #tomstop
    #ps aux|grep tomcat
    #kill -9 $PID

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
