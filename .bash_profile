export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export ANDROID_HOME=/opt/android
export POW_USER=true

export DISPLAY=:0.0
export TERM=xterm-color
export EDITOR=/usr/bin/vim
export EVENT_NOKQUEUE=yes
export GREP_OPTIONS='--color=auto'

export PATH=/usr/local/bin:/usr/local/riak/bin:/opt/local/lib/postgresql83/bin:/usr/local/mongodb/bin:/opt/local/bin:/opt/local/sbin:/opt/ree/bin:/usr/local/sbin:~/bin:/usr/local/mysql/bin:$ANDROID_HOME/tools:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"

test -r /sw/bin/init.sh && . /sw/bin/init.sh

source /usr/local/git/contrib/completion/git-completion.bash
source ~/.alias_machines

alias ll='ls -l'
alias notes='less ~/notes.txt'
alias vim-cheatsheet='less ~/vim-cheatsheet.txt'
alias dns-flush='dscacheutil -flushcache'
alias be='bundle exec'
alias suite='bundle exec rake db:migrate parallel:prepare[2] parallel:suite'

complete -d cd rmdir

# CouchDB
alias restart_couch='/usr/bin/sudo launchctl stop org.apache.couchdb'
alias start_couch='/usr/bin/sudo launchctl load -w ~/Library/LaunchAgents/org.apache.couchdb.plist'
alias stop_couch='/usr/bin/sudo launchctl unload ~/Library/LaunchAgents/org.apache.couchdb.plist'

# Add git branch to prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

source ~/.project_aurora

function proml {
  PS1="[\w\$(parse_git_branch)] \$ "
  PS2='> '
  PS4='+ '
}
proml

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
