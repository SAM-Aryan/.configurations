# Path to Antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# Initialize your plugins
antidote load

# Initialize Starship
eval "$(starship init zsh)"

# OpenJDK 17
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi

# Android SDK
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH

# Neovim as default editor
export EDITOR='nvim'
export VISUAL='nvim'
alias vim='nvim'
alias vi='nvim'
alias python='python3'
alias pip='pip3'
