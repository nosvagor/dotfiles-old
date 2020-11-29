set t (set_color red; and echo -n '|'; and set_color white)
set a (set_color green; and echo -n '|'; and set_color white)

set c (set_color blue; and echo -n '|'; and set_color white)
set g (set_color yellow; and echo -n '|'; and set_color white)

set fish_greeting 
    echo "-. .-.   .-. .-.   .-. .-.   .-. .-.   .-. .-.   .-. .-.   .-. .-.   .-. .-.   .-. .-.   .-. .-.   ."
    echo "$t$a\\$g$c$g\ /$g$t$c\\$t$a$c\ /$a$a$t\\$a$g$c\ /$c$c$t\\$c$a$t\ /$t$a$c\\$g$a$g\ /$g$c$g\\$c$t$t\ /$t$g$c\\$a$g$c\ /$t$t$a\\$c$g$c\ /$a$a$t\\$c$t$c\ /$t$t$g\\$a$c$g\ /$c"
    echo "$g/ \\$g$c$a\\$t$c$a/ \\$t$g$g\\$c$t$t/ \\$c$g$a\\$t$g$g/ \\$t$a$t\\$g$a$t/ \\$t$c$g\\$c$c$g/ \\$a$a$a\\$g$a$c/ \\$c$g$a\\$t$a$a/ \\$c$g$t\\$t$t$g/ \\$a$g$c\\$a$a$a/ \\$g$c$a\\$c$g"
    echo "~   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-`   `-~ `-"

# Startx at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty >~/.xorg.log ^&1
  end
end
