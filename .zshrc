# Path to your dotfiles installation.
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras history-substring-search z zsh-autosuggestions zsh-syntax-highlighting)

# Active asdf
export ASDF_DIR=$(brew --prefix asdf)

# Activate Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR="code -w"

# Spaceship theme config
SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  docker        # Docker section
  aws           # Amazon Web Services section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

#Path for sdkman
export SDKMAN_DIR="/Users/eliasousa/.sdkman"
[[ -s "/Users/eliasousa/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/eliasousa/.sdkman/bin/sdkman-init.sh"
