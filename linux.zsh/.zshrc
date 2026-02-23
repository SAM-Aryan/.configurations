# Path to Antidote
source /home/armohan/.antidote/antidote.zsh

# Initialize your plugins
antidote load

# Initialize Starship
eval "$(starship init zsh)"

# Fast Node Manager
FNM_PATH="/home/armohan/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# Android SDK
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_NDK=$ANDROID_SDK_ROOT/ndk/latest/
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
