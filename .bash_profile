export PATH=/usr/local/bin:$PATH
eval "$(rbenv init -)"
eval "$(rbenv init -)"
eval "$(rbenv init -)"

export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export JAVA_HOME=$(/usr/libexec/java_home)

## Aliases
#location

#profile
alias bashp='vim ~/.bash_profile'

#vim rc
alias vimrc='vim .vimrc'

#vim fzf
alias vimf='vim $(fzf)'

#source profile
alias srcbash='source ~/.bash_profile'

#python
alias pss='python -m SimpleHTTPServer' 
alias screenpss='screen python -m SimpleHTTPServer'

#polyserve
alias poly="polyserve"

#java
alias jv="java -version"
alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

#git commands
alias gs="git status"
alias gpul="git pull"
alias gpus="git push"
alias gd="git diff"
alias gf="git fetch"
alias greset="git reset --hard"
alias gadd="git add"
alias gdelete="git branch -D"
alias gcommit="git commit -m"
alias gl="git log"
alias gn="git number"
alias gc="git checkout"

#misc
alias if="ifconfig | grep 192"
