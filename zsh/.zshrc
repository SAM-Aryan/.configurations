# Path to Antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh

# Initialize your plugins
antidote load

# Initialize Starship
eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi
