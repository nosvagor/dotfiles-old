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

# ╔═╗┬  ┬ ┬┌─┐┬┌┐┌┌─┐
# ╠═╝│  │ ││ ┬││││└─┐
# ╩  ┴─┘└─┘└─┘┴┘└┘└─┘
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# ╔═╗┬─┐ ┬  ╦╔═┌─┐┬ ┬┌─┐
# ╠╣ │┌┴┬┘  ╠╩╗├┤ └┬┘└─┐
# ╚  ┴┴ └─  ╩ ╩└─┘ ┴ └─┘
key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Home]}"    ]]  && bindkey -M vicmd "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey -M vicmd "${key[End]}"     end-of-line