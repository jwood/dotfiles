# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


POW_USER=true
export EDITOR=/usr/bin/vim

source ~/.alias_machines
#source ~/.project_aurora

alias ll='ls -l'
alias notes='less ~/notes.txt'
alias vim-cheatsheet='less ~/vim-cheatsheet.txt'
alias dns-flush='dscacheutil -flushcache'
alias be='bundle exec'
alias suite='bundle exec rake db:migrate parallel:prepare\[2\] parallel:suite'

# Help speed up git autocomplete
__git_files () { 
  _wanted files expl 'local files' _files 
}


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew cap gem git github heroku osx pow rails3 rake ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/Users/john.wood/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/john.wood/.rbenv/shims

#PROMPT='%{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(parse_git_branch)%{$fg_bold[blue]%} % %{$reset_color%}'
PROMPT='%{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export ADD_TRACKER_ID_TO_COMMIT_MESSAGE=true

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

ssh-add ~/.ssh/id_rsa

