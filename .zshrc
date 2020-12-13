# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cullyn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"

bindkey '^[[H' beginning-of-line     # Home
bindkey '^[[F' end-of-line     # End
bindkey '^[[3~' delete-char     # Delete
bindkey '^?' backward-delete-char     # Backspace