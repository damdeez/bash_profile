export PATH=/usr/local/bin:$PATH
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dharambasic/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dharambasic/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dharambasic/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dharambasic/google-cloud-sdk/completion.bash.inc'; fi
