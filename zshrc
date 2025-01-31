# zmodload zsh/zprof
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export PATH=$HOME/.nvm/versions/node/v19.5.0/bin:$HOME/bin:$HOME/scripts/dragon:$HOME/go/bin:$HOME/.jenv/bin:$PATH
export PATH=$HOME/bin:$HOME/.local/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/scripts/dragon:/Applications/WezTerm.app/Contents/MacOS:$HOME/go/bin:/Applications/WebStorm.app/Contents/MacOS:$PATH

# https://gpanders.com/blog/the-definitive-guide-to-using-tmux-256color-on-macos/
# export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo

export RIPGREP_CONFIG_PATH=$HOME/.config/ripgreprc


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="niko"
# ZSH_THEME="agnoster-niko"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-lazyload git tmux fasd)

source $ZSH/oh-my-zsh.sh

# ssh
# Check if SSH agent is running or start a new one
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval "$(ssh-agent -s)"
fi

eval "$(brew shellenv)"
export HOMEBREW_NO_ANALYTICS=1

# rtx now called mise
eval "$(mise activate zsh)"

# lazyload nvm -- 'source ~/.nvm/nvm.sh'

eval "$(fzf --zsh)"

eval "$(fasd --init auto)"

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
export EDITOR="nvim"
# export MANPAGER='nvim +Man! -c "colorscheme base16-pop"'
export MANPAGER='nvim +Man!'

export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border'
# export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --color="hl+:9,hl:9,bg+:19,fg+:7"'
# export FZF_DEFAULT_OPTS="--height 80% --layout=reverse --color='hl+:9,hl:9,bg+:19,fg+:7' --preview 'bat --style=numbers --theme=OneHalfDark --color=always {} | head -500'"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# todo: try using emacsclient
alias t="tmux"
alias e="open -a Emacs $*"
alias vim="nvim"
alias v="nvim"
alias nano="nvim"
alias ls="ls -FG"
alias py-makevenv="python3 -m venv .venv && source .venv/bin/activate"

alias gda="git diff -- . ':(exclude)build/app.js'"
alias gdam="git diff origin/master -- . ':(exclude)build/app.js'"

# sort branches by date descending
alias gbsort="git for-each-ref --sort='-authordate:iso8601' --format=' %(authordate:relative)%09%(refname:short)' refs/heads"


# google bundle tool
alias bundletool="java -jar $HOME/Applications/bundletool.jar"

# The next two lines remove duplicate entries from path.
# https://stackoverflow.com/questions/13058578/how-to-prevent-tmux-from-filling-up-the-global-path-variable-with-duplicated-path
# This works because zsh automatically sets up the $path variable as an array
# that mirrors the content of $PATH. The -U option to typeset modifies
# that variable so that the entries are unique.
typeset -aU path
# path=( $path /foo )




lfcd() {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}
bindkey -s '^o' 'lfcd\n'  # zsh

yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


vv() {
  local file
  file="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && vim "${file}" || return 1
}

# open git diff in vim
gdn() {
  git diff -w "$@" | vim -R -
}

fcl() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

# fco - checkout git branch/tag
fcr() {
  local tags branches target
  tags=$(
    git tag | awk '{print "\x1b[31;1mtag\x1b[m\t" $1}') || return
  branches=$(
    git branch --all | grep -v HEAD             |
    sed "s/.* //"    | sed "s#remotes/[^/]*/##" |
    sort -u          | awk '{print "\x1b[34;1mbranch\x1b[m\t" $1}') || return
  target=$(
    (echo "$tags"; echo "$branches") |
    fzf-tmux -l50 -- --no-hscroll --ansi +m -d "\t" -n 2) || return
  git checkout $(echo "$target" | awk '{print $2}')
}

ccd() {
    local directory
    directory="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${directory}" || return 1
}

tt() {
  local tm_windows tm_window
  tm_windows=$(tmux list-windows -F "#{window_name}") &&
  tm_window=$(echo "$tm_windows" | fzf +m) &&
  tmux select-window -t $(echo "$tm_window" | awk '{print $1}' | sed "s/.* //")
}

# find files using macos indexed files
mm() {
    if [ $# -eq 0 ]; then
        echo "No arguments provided."
        echo "Usage mm FILENAME"
        return 1
    else
        local file
        file="$(mdfind "$1" | fzf -1 -0 --no-sort +m)" && vim "${file}" || return 1
    fi
}

# edit command line in vim
bindkey '^x^x' edit-command-line

source ~/.config/lf/icons.sh

# zprof
