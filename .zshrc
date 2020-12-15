# ███████╗███████╗██╗  ██╗██████╗  ██████╗
# ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝
#   ███╔╝ ███████╗███████║██████╔╝██║     
#  ███╔╝  ╚════██║██╔══██║██╔══██╗██║     
# ███████╗███████║██║  ██║██║  ██║╚██████╗
# ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
                                        
# .--.      .-'.      .--.      .--.      .--.      .--.      .`-.
#|:::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\
#|::::.\:: https://github.com/cullyn-inverba/dotfiles ::.\::::::::.\
#|:::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\::::::::.\
#        `--'      `.-'      `--'      `--'      `--'      `-.'      `

# ╔═╗┌┬┐┌─┐┬─┐┌┬┐┬ ┬┌─┐
# ╚═╗ │ ├─┤├┬┘ │ │ │├─┘
# ╚═╝ ┴ ┴ ┴┴└─ ┴ └─┘┴
# Load starship prompt ~/.config/starship.toml
eval "$(starship init zsh)"

# Autostart startx after login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi

~/.config/zsh/greeting.sh 

# ╦ ╦┬┌─┐┌┬┐┌─┐┬─┐┬ ┬
# ╠═╣│└─┐ │ │ │├┬┘└┬┘
# ╩ ╩┴└─┘ ┴ └─┘┴└─ ┴ 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# ╔╗ ┬┌┐┌┌┬┐┬┌─┌─┐┬ ┬┌─┐
# ╠╩╗││││ ││├┴┐├┤ └┬┘└─┐
# ╚═╝┴┘└┘─┴┘┴ ┴└─┘ ┴ └─┘
bindkey -s '^f' 'ranger\n'

# ╔═╗┬─┐ ┬  ╦╔═┌─┐┬ ┬┌─┐
# ╠╣ │┌┴┬┘  ╠╩╗├┤ └┬┘└─┐
# ╚  ┴┴ └─  ╩ ╩└─┘ ┴ └─┘
bindkey '^[[H' beginning-of-line     # Home
bindkey '^[[F' end-of-line           # End
bindkey '^[[3~' delete-char          # Delete
bindkey '^?' backward-delete-char    # Backspace

# ╔═╗┬  ┬ ┬┌─┐┬┌┐┌┌─┐
# ╠═╝│  │ ││ ┬││││└─┐
# ╩  ┴─┘└─┘└─┘┴┘└┘└─┘
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh