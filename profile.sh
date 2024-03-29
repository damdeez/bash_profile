export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/damirharambasic/.varo
export PATH=/usr/local/bin:$PATH
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export NODE_OPTIONS=--max_old_space_size=8192

# export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]: \[\033[33;1m\]\w\[\033[m\]\n\$ "
source ~/bash_profile/ps1-git.sh
source ~/bash_profile/git-completion.bash

# Handy Aliases
alias ll='ls -al'
alias desk='cd ~/Desktop/'
alias work='cd ~/Desktop/Work/'
alias refrash='source ~/.profile'
alias ls='ls -GFh'
alias cl='clear'
alias cls="echo -en '\033c\033[3J'"
alias cleanGit="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -D"
alias master="git checkout master;git pull;cl"

# Handy Functions
function mkcd() { mkdir $1 ; cd $1 ; }
function cdf () {
    finderPath=`osascript -e 'tell application "Finder"
            try
                set currentFolder to (folder of the front window as alias)
            on error
                set currentFolder to (path to desktop folder as alias)
            end try
            POSIX path of currentFolder
        end tell'`;
    echo "cd to \"$finderPath\""
    cd "$finderPath"
}

function tabTitle() {
  echo -e "\033]0;${1:?please specify a title}\007";
}
