#!/usr/bin/zsh
#
# ZSH History Configuration
# ==============================================================================
#

## History Variables
export HISTFILE=~/.zsh_history			# You must set the histfile...
export HISTSIZE=1000000				# Infinite lines in history
export SAVEHIST=1000000			# Infinite history file size


## History Options
setopt append_history		# Append history rather than replace it
setopt extendedHistory		# Add timestamps to history 
setopt histIgnoreDups		# Ignore duplicated events in history
# setopt histIgnoreSpace		# If line starts with a space, don't add it to history
setopt histExpireDupsFirst
# setopt histNoStore		# Don't save "history" cmd in history
setopt histVerify		# When using ! commands, confirm first rather than execute
setopt incAppendHistory		# Add lines to histfile as they are executed, rather than waiting until the shell exits
# setopt shareHistory		# Share history between open shells
