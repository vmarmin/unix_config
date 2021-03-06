# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:~/.local/bin
# Add perl path
export PATH=$PATH:/usr/local/lib/x86_64-linux-gnu/perl/5.26.1/
# Add GO path
export PATH=$PATH:/home/valentin/go/bin

# Python startup
export PYTHONSTARTUP=~/.pythonrc

# Path to your oh-my-zsh installation.
if [ "$(uname 2> /dev/null)" = "Darwin" ]; then
    export ZSH="/Users/valentin/.oh-my-zsh"
    source $(brew --prefix)/etc/profile.d/z.sh
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
    )
elif [ "$(uname 2> /dev/null)" = "Linux" ]; then
    export ZSH="/home/valentin/.oh-my-zsh"
    plugins=(
        git
        zsh-autosuggestions
        zsh-syntax-highlighting
        k
    )
    # Z script
    . ~/Documents/externals/z/z.sh
fi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
# source ~/.fonts/*.sh
ZSH_THEME='avit-custom'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

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
alias l='ls -l'
alias vi='vim'
alias tcpdump='sudo tcpdump'
alias lrt='ls -lrt'
alias ge='gedit'
alias ws='cd ~/Documents/workspace && pwd'
alias shutter='shutter -s'
alias getstackmanremote='sudo sshfs -o allow_other valentin@10.10.0.25:/home/stackman/Stackman /mnt/rem-stackman'
alias yank='yank-cli'
alias pip-upgrade="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias chrome='google-chrome'
alias diff='colordiff'
alias ssh-config='vi ~/.ssh/config'
alias github='/opt/GitHub\ Desktop/github-desktop'
alias randwp="feh --bg-fill --randomize /home/valentin/Pictures/wallpapers"
alias i3config='vi ~/.config/i3/config'
alias sv='source venv/bin/activate'

ydl () {
    youtube-dl --extract-audio --no-playlist --audio-format mp3 $1
}

say () {
    echo "$@" | festival --tts
}

eval $(thefuck --alias)

fortune -s

neofetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
