export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export ANDROID_HOME=/opt/android

export DISPLAY=:0.0
export TERM=xterm-color
export EDITOR=/usr/bin/vim
export EVENT_NOKQUEUE=yes
export GREP_OPTIONS='--color=auto'

export PATH=/opt/local/lib/postgresql83/bin:/opt/local/bin:/opt/local/sbin:/Users/jwood/bin:/usr/local/mysql/bin:$ANDROID_HOME/tools:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"

test -r /sw/bin/init.sh && . /sw/bin/init.sh

source /usr/local/git/contrib/completion/git-completion.bash
source ~/.alias_machines

alias ll='ls -al'
alias notes='less ~/notes.txt'
alias vim-cheatsheet='less ~/vim-cheatsheet.txt'
alias dns-flush='dscacheutil -flushcache'

complete -d cd rmdir

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
