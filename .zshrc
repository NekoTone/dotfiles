# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#obraun linuxonly adben dallas
#ZSH_THEME="neko"
ZSH_THEME="tone"

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
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
plugins=(
	git 
	sudo 
	osx 
	docker 
	golang 
	npm 
	kubectl
	aws
)

# User configuration

export PATH="$PATH:/Users/nbucco/perl5/perlbrew/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/Users/nbucco/.rvm/gems/ruby-2.1.1/bin:/Users/nbucco/.rvm/gems/ruby-2.1.1@global/bin:/Users/nbucco/.rvm/rubies/ruby-2.1.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin:/usr/texbin:/sw/bin:/sw/sbin:/opt/local/bin:/opt/local/sbin:/Users/nbucco/.rvm/gems/ruby-2.1.1/bin:/Users/nbucco/.rvm/gems/ruby-2.1.1@global/bin:/Users/nbucco/.rvm/rubies/ruby-2.1.1/bin:/Users/nbucco/.rvm/bin:/Users/nbucco/.rvm/bin:/Users/nbucco/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=/Users/nbucco/Library/Python/3.7/bin:$PATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
 export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias sudo='nocorrect sudo'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export GOROOT="/usr/local/go"
export GOPATH="$HOME/work/go"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"


if [ -f .aliasrc ]; then
    source .aliasrc
fi
#eval "$(docker-machine env osxdock)"

#NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

#PATH="$NPM_PACKAGES/bin:$PATH"
## Unset manpath so we can inherit from /etc/manpath via the `manpath`
## command
#unset MANPATH # delete if you already modified MANPATH elsewhere in your config
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
if [ -f "$PATH:$HOME/.rvm/scripts/rvm" ]; then
		source "$PATH:$HOME/.rvm/scripts/rvm"
fi
