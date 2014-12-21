# Add local bin to PATH
PATH=~/.dotfiles/bin:$PATH
export PATH

# use VIM for EDITOR
export EDITOR=vim

export HTML_TABS=4
export JSON_TABS=2
export JS_TABS=4
export MAX_WIDTH=120
export MAX_PY_WIDTH=$MAX_WIDTH
export MAX_JS_WIDTH=$MAX_WIDTH

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# shortcut to calculate python coverage
function pycov() {
    if [ ! -z "`which coverage`" ]
    then
        coverage run "$@"; coverage report --show-missing;
    else
        python-coverage run "$@"; python-coverage report --show-missing;
    fi
}

# Open up keepassx
alias openkp='keepassx ~/Dropbox/KP/Database.kdb &'

# Aliases
alias cl='clear'

#
# Handy grep functions
#
SOURCE="${BASH_SOURCE[0]}"
# resolve $SOURCE until the file is no longer a symlink
while [ -h "$SOURCE" ]; do
    DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    # if $SOURCE was a relative symlink, resolve it
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd "$( dirname "${SOURCE}" )" && pwd )"

# make everything prompt
alias cp='/bin/cp -i'
alias mv='/bin/mv -i'
alias rm='/bin/rm -i'

# super helpful shortcut to execute previous command
alias r='fc -s'
alias vsh='vagrant ssh'
alias ll="ls -all"

# color ls
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

function se() {
    grep -R ${1} . --color
}
