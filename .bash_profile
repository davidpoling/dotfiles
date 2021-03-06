export PATH=/usr/local/bin:$PATH
eval "$(rbenv init -)"
eval "$(rbenv init -)"
eval "$(rbenv init -)"

# MacPorts Installer addition on 2016-04-12_at_20:02:25: adding an appropriate PATH variable for use with MacPorts.
eval "$(rbenv init -)"

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
