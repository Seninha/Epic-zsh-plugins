#!/usr/bin/zsh
#
# ZSH alias
# ==============================================================================
#
# Each alias is only executed if a previous "type" command succeeds.
#
# The "type" comand succeeds only if the  argument can be interpreted as a valid
# command name for the shell.
#

# Setting some variables
# ==============================================================================

[[ -z $EDITOR ]] && EDITOR=vim
[[ -z $BROWSER ]] && EDITOR=firefox


# Suffix aliases (writing a file name makes zsh opening it in a command)
# ==============================================================================

## Misc
type wine &> /dev/null &&       alias -s exe=wine

## Vim 
type vim &> /dev/null &&        alias -s txt=$EDITOR
type vim &> /dev/null &&        alias -s c=$EDITOR
type vim &> /dev/null &&        alias -s sh=$EDITOR
type vim &> /dev/null &&        alias -s tex=$EDITOR
type vim &> /dev/null &&        alias -s py=$EDITOR

## Internet Browser
type firefox &> /dev/null &&    alias -s html=$BROWSER
type firefox &> /dev/null &&    alias -s com=$BROWSER
type firefox &> /dev/null &&    alias -s org=$BROWSER
type firefox &> /dev/null &&    alias -s net=$BROWSER
type firefox &> /dev/null &&    alias -s edu=$BROWSER


# Output Improvement 
# ==============================================================================

type pinfo &> /dev/null &&      alias info='pinfo'
type colordiff &> /dev/null &&  alias diff='colordiff'
type df &> /dev/null &&         alias df='df -h'			# Human redable
type du &> /dev/null &&         alias du='du -c -h'			# Human redable
type egrep &> /dev/null &&      alias egrep='egrep --color=auto'	# Colored egrep
type free &> /dev/null &&       alias free='free -ht'			# Human redable

# ls
type ls &> /dev/null &&         alias ls='ls \
	--color=auto \
	--group-directories-first \
	--quoting-style=shell \
	-Fh'			# Colored,  directories  first,  quoting  style,
				# human redable and filetype indicator file ls

type ls &> /dev/null &&         alias ll='ls -l'
type ls &> /dev/null &&         alias lr='ls -R'
type ls &> /dev/null &&         alias la='ls -A'
type ls &> /dev/null &&         alias ld='ls -ld'
type ls &> /dev/null &&         alias llr='ls -lR'
type ls &> /dev/null &&         alias lla='ls -lA'
type ls &> /dev/null &&         alias lra='ls -RA'
type ls &> /dev/null &&         alias llra='ls -lRA'


# File Management (mainly security changes)
# ==============================================================================

type chown &> /dev/null &&      alias chown='chown --preserve-root'
type chmod &> /dev/null &&      alias chmod='chmod --preserve-root'
type chgrp &> /dev/null &&      alias chgrp='chgrp --preserve-root'
type cp &> /dev/null &&         alias cp='cp -Ri'
type mv &> /dev/null &&         alias mv='mv -i'
type rm &> /dev/null &&         alias remove='rm -RiI'
type ln &> /dev/null &&         alias ln='ln -i'
type mkdir &> /dev/null &&      alias mkdir='mkdir -p -v'
type trash &> /dev/null &&      alias rm='trash'


# Arch Linux related aliases
# ==============================================================================

type yaourt &> /dev/null &&     alias pacman='yaourt'


# Vim-related aliases
# ==============================================================================

type vimpager &> /dev/null &&   alias more='vimpager'
type vimpager &> /dev/null &&   alias less='vimpager'
type vimpager &> /dev/null &&   alias most='vimpager'
type vimpager &> /dev/null &&   alias view='vimpager'

## Shortcuts
type vim &> /dev/null &&        alias :v='vim'
type vim &> /dev/null &&        alias :V='vim'
type vim &> /dev/null &&        alias v='vim'
type vim &> /dev/null &&        alias V='vim'


# Development
# ==============================================================================

type i486-mingw32-gcc &> /dev/null &&      alias wgcc='i486-mingw32-gcc'

type i486-mingw32-gcc &> /dev/null &&      function wcc-ansi {
	args=$*
	in="${@: -1}"
	flags="${@%${in}}"
	out=$(echo -n "$in" | sed -r 's/\.c$//')
	wgcc -g -ansi -Wall $flags "$in" -o "${out}.exe"
}

type i486-mingw32-gcc &> /dev/null &&      function wcc {
	args=$*
	in="${@: -1}"
	flags="${@%${in}}"
	out=$(echo -n "$in" | sed -r 's/\.c$//')
	wgcc -g -Wall $flags "$in" -o "${out}.exe"
}

type gcc &> /dev/null &&        function cc-ansi {
	args=$*
	in="${@: -1}"
	flags="${@%${in}}"
	out=$(echo -n "$in" | sed -r 's/\.c$//')
	gcc -Og -ansi -Wall $flags "$in" -o $out
}

type gcc &> /dev/null &&        function cc {
	args=$*
	in="${@: -1}"
	flags="${@%${in}}"
	out=$(echo -n "$in" | sed -r 's/\.c$//')
	gcc -Og -std=gnu99 -Wall $flags "$in" -o $out
}


# Misc
# ==============================================================================

## Music and Audio management
type alsamixer &> /dev/null &&  alias volume='alsamixer'
type lyvi &> /dev/null &&       alias lyric='lyvi'
type lyvi &> /dev/null &&       alias lyrics='lyvi'


## Power Management
type poweroff &> /dev/null &&   alias poweroff='sudo poweroff'
type reboot &> /dev/null &&     alias reboot='sudo reboot'


## Games
type tetris &> /dev/null &&     alias tetris='vitetris'
type cmatrix &> /dev/null &&    alias matrix='cmatrix'


## Useful commands in prompt
type wicd-curses &> /dev/null && alias wifi="wicd-curses"
type kde-open &> /dev/null &&   alias open='kde-open &> /dev/null'
type history &> /dev/null &&    function hist {
	a=$*
	test $1 || a=^
	for i in $a
	do
		history | sed -r 's/^[\t ]*[1234567890]+\*?[\t ]+(.*$)/\1/ ; $d' |  grep -E -- $i -
	done
}

#
## Behavioral Improvements
type egrep &> /dev/null &&      alias grep='egrep'
type nano &> /dev/null &&       alias nano='nano -w'
type sudo &> /dev/null &&       alias sudo='sudo '		# Makes sudo suports alias expansion ;-)
type tmux &> /dev/null &&       alias tmux='unset TMUX && tmux'


# Vim-like Shortcuts
type exit &> /dev/null &&       alias :q='exit'
type exit &> /dev/null &&       alias :Q='exit'
type exit &> /dev/null &&       alias q='exit'
type exit &> /dev/null &&       alias Q='exit'

