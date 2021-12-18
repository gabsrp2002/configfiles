# Path to oh-my-zsh installation.
export ZSH="/Users/gabriel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="clean"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=()

# Do not use case sensitive completion
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# nvim alias
alias nvide="~/neovide/target/release/neovide && exit"
alias vim="/opt/homebrew/Cellar/neovim/0.6.0/bin/nvim"
alias viminit="cd ~/.config/nvim"
alias vimbasic="vim ~/.config/nvim/configs/basic.vim"
alias vimconfig="vim /Users/gabriel/.config/nvim/configs/my_configs.vim"
alias vimplugins="vim /Users/gabriel/.config/nvim/configs/plugins.vim"
alias vimpluginsconfig="vim /Users/gabriel/.config/nvim/configs/plugins_config.vim"
alias vimfiletypes="vim /Users/gabriel/.config/nvim/configs/filetypes.vim"

# zsh alias
alias zshrun="source ~/.zshrc"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Open with preview
alias prev="open -a preview"

# Latex alias
alias latexstyle="vim /Users/gabriel/Library/texmf/tex/latex/local/Gabriel.sty"

# config files repo
alias config='/usr/bin/git --git-dir=$HOME/configfiles/ --work-tree=$HOME'

# Function to fast add, commit and push
function acp() {
  git add .
  git commit -m "$1"
  git push
}

export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:/Applications/MacVim.app/Contents/bin:/Library/Frameworks/Python.framework/Versions/3.9/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Library/Apple/usr/bin:/opt/homebrew/bin:/opt/homebrew/bin
export PATH="/usr/local/opt/util-linux/bin:$PATH"
export PATH="/usr/local/opt/util-linux/sbin:$PATH"
