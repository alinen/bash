vim()
{
   local var=`pwd -P`;
   echo $var;
   "/cygdrive/c/Program Files (x86)/Vim/Vim74/gvim.exe" "$@";
}

alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias heroku="/cygdrive/c/Program\ Files\ \(x86\)/Heroku/bin/Heroku.bat"

oblique_strategy()
{
   head -n $((${RANDOM} % `wc -l < oblique_strategies.txt` + 1)) oblique_strategies.txt | tail -1;
}

echo "Greetings, master."
oblique_strategy

DISPLAY=":0.0"
export DISPLAY
#eval $(ssh-agent -s)
#ssh-add ~/.ssh/animazing

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

