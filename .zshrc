# uncomment to profile prompt startup with zprof
zmodload zsh/zprof
ANTIGEN_LOG=~/antigen.log
# history
SAVEHIST=100000

# vim bindings
# bindkey -v


# fpath=( "$HOME/.zfunctions" $fpath )
source $(brew --prefix)/share/antigen/antigen.zsh

# # antigen time!s

######################################################################
### install some antigen bundles

# local b="antigen bundle"

# Don't load the oh-my-zsh's library. Takes too long. No need.
	# antigen use oh-my-zsh

# Guess what to install when running an unknown command.
antigen bundle command-not-found

# Helper for extracting different types of archives.
antigen bundle extract

# homebrew  - autocomplete on `brew install`
antigen bundle brew
antigen bundle brew-cask

# Tracks your most used directories, based on 'frecency'.
antigen bundle robbyrussell/oh-my-zsh plugins/z

# nicoulaj's moar completion files for zsh -- not sure why disabled.
# antigen bundle zsh-users/zsh-completions src

# Syntax highlighting on the readline
antigen bundle zsh-users/zsh-syntax-highlighting

# history search
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# suggestions
antigen bundle tarruda/zsh-autosuggestions

# colors for all files!
# antigen bundle trapd00r/zsh-syntax-highlighting-filetypesq

# dont set a theme, because pure does it all
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

# Tell antigen that you're done.
antigen apply

###
#################################################################################################


# bind UP and DOWN arrow keys for history search
zmodload zsh/terminfo
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

export PURE_GIT_UNTRACKED_DIRTY=0

# Automatically list directory contents on `cd`.
auto-ls () {
	emulate -L zsh;
	# explicit sexy ls'ing as aliases arent honored in here.
	hash gls >/dev/null 2>&1 && CLICOLOR_FORCE=1 gls -aFh --color --group-directories-first || ls
}
chpwd_functions=( auto-ls $chpwd_functions )


# # Enable autosuggestions automatically
# zle-line-init() {
#     zle autosuggest-start
# }

# zle -N zle-line-init


# history mgmt
# http://www.refining-linux.org/archives/49/ZSH-Gem-15-Shared-history/
setopt inc_append_history
setopt share_history


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# uncomment to finish profiling
# zprof

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setup golang
export PATH=$HOME/go/bin:$PATH

# K8s stuff
# source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export PATH="/usr/local/opt/sqlite/bin:$PATH"

export PATH="/Users/paalkristianminne/development/flutter/bin:$PATH"

export PATH=$HOME/.gem/bin:$PATH

# Load default dotfiles
source ~/.bash_profile

# UV autocompletion
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"


export PATH="/opt/homebrew/opt/pnpm/bin:$PATH"

export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"

# Add .NET Core SDK tools
export PATH="$PATH:/Users/paalkristianminne/.dotnet/tools"

export PATH="$PATH:/Applications/IntelliJ IDEA.app/Contents/MacOS"

echo "ZSH configuration loaded successfully."