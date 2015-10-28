export PATH=/usr/local/bin:$PATH
# export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]: \[\033[33;1m\]\w\[\033[m\]\n\$ "
source ~/bash_profile/ps1-git.sh
# Handy Aliases
alias ll='ls -al'
alias desk='cd ~/Desktop/'
alias work='cd ~/Desktop/Work/'
alias refrash='source ~/.profile'
alias ls='ls -GFh'
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
function mkproj() {
if [[ $# -eq 0 ]]; then
    mkdir css ;
    mkdir js ;
    touch css/style.css ;
    touch js/main.js ;
    touch index.html ;
    echo -e "<!doctype html>
<html>
    <head>
        <meta charset=\"utf-8\">
        <meta name=\"description\" content=\"\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
        <title>Untitled</title>
        <link rel=\"stylesheet\" href=\"css/style.css\">
        <link rel=\"author\" href=\"humans.txt\">
    </head>
    <body>

        <script src=\"js/main.js\"></script>
    </body>
</html>" >> index.html ;
fi
}
