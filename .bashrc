alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..

oblique_strategy()
{
   head -n $((${RANDOM} % `wc -l < ~/oblique_strategies.txt` + 1)) ~/oblique_strategies.txt | tail -1;
}

eval `ssh-agent -s`
ssh-add ~/.ssh/github

echo "Greetings, human."
oblique_strategy

# maybe need this for wsl: export DISPLAY=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}'):0.0
DISPLAY=":0.0"
export DISPLAY

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

if ! mount | grep -q "D:"; then
   sudo mount -t drvfs -o metadata D: /mnt/d
fi
alias csc=csc.exe
umask 0027 # preferred default umask
