#!/usr/bin/zsh
#
# ZSH options
# ==============================================================================
#
# This file contains setting and unsetting of zsh options.

## CD Options
setopt autocd			# Automatically cd when a path is given
setopt cdableVars		# If cd argument isn't a valid directory, consider it as a variable
# setopt autoNameDirs
# setopt autoPushd
# setopt pushdIgnoreDups
# setopt pushdMinus

## Completion Options
# setopt alwaysLastPrompt	# Return to the last prompt after listing completions
unsetopt alwaysToEnd		# Moves the cursor to the end of the completion
setopt autoMenu			# Show completion menu on successive tab press
setopt autoParamSlash		# If complets a directory, add a slash innstead of a space
unsetopt completeInWord		# Don't go to the end of the word if completion is started
unsetopt completeAliases
setopt bashAutoList		# List choices on an ambiguous completion (like Bash)
# setopt globComplete		# Use completion for patterns
setopt listPacked		# Compact Completion lists by using columns with different widths
setopt listTypes		# List file type when complete files
unsetopt menuComplete		# Do not autoselect the first completion entry
# setopt recExact		# In completion, recognize exact matches

## Expansion and Globbing
setopt glob			# Perform filename generation (globbing)
setopt globDots			# Also expand to dotfiles when globbing
setopt markDirs			# Append a / to directory names resuting from globbing
setopt noMatch			# Return an error if the the globbing doesn't expand to anything
# setopt numericGlobSort	# Sort filenames numerically rather than lexicographically

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

## Initialisation
setopt allExport		# Export all variables

## Input/Output
setopt aliases			# Expand alias
setopt clobber			# > and >> work like in bash
# setopt correct		# Try to correct the spelling of command name
# setopt correctAll		# Try to correct the spelling of THE ENTIRE LINE (EVEN the arguments). Don't use it, it's anoying
unsetopt flowControl		# Enable output flow control (If you press ^S the shell will no more stop)
setopt interactiveComments	# Allow comments even in interactive shells
# setopt hashCmds		# Saves the location of a command. So doesn't have to locate it in PATH on subsequent invocations
# setopt pathScript		# Execute scripts even if they aren't executable
# setopt printExitValue		# Print the exit value of programs with non-zero status
setopt rmStarWait		# wait 10 sec after execute rm * to make the user think better

## Job Controle
setopt checkJobs		# Report the status of bg jobs before exiting a shell
setopt longListJobs		# List jobs in the long format by default
setopt monitor			# Allow job control

## Prompting
setopt promptSP			# Print newline before the prompt if the previous command dont do it
setopt promptSubst		# Perform parameter expansion (and other expansions) in prompts

## Scripiting
setopt multios

