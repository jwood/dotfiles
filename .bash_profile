export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export GROOVY_HOME=/opt/groovy-1.6.0
export M2_HOME=/opt/apache-maven-2.0.10
export M2=$M2_HOME/bin
export CATALINA_HOME=/opt/apache-tomcat-6.0.18
export CATALINA_BASE=/opt/apache-tomcat-6.0.18
export ANDROID_HOME=/opt/android

export DISPLAY=:0.0
export TERM=xterm-color
export EDITOR=/usr/bin/vim
export EVENT_NOKQUEUE=yes
export GREP_OPTIONS='--color=auto'

export PATH=/opt/ruby-enterprise-1.8.6-20090113/bin:/opt/local/lib/postgresql83/bin:/opt/local/bin:/opt/local/sbin:/Users/jwood/bin:/usr/local/mysql/bin:$M2:$GROOVY_HOME/bin:$ANDROID_HOME/tools:$PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"

test -r /sw/bin/init.sh && . /sw/bin/init.sh

source /usr/local/git/contrib/completion/git-completion.bash
source .alias_machines

alias ll='ls -l'
alias notes='less ~/notes.txt'
alias vim-cheatsheet='less ~/vim-cheatsheet.txt'
alias dns-flush='dscacheutil -flushcache'

complete -d cd rmdir

if [[ -s /Users/jwood/.rvm/scripts/rvm ]] ; then source /Users/jwood/.rvm/scripts/rvm ; fi

# Add git branch to prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  PS1="[\w\$(parse_git_branch)] \$ "
  PS2='> '
  PS4='+ '
}
proml

