#
# Provides Docker aliases
#
# Authors:
#   Tung Ha <tunght13488@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[docker] )); then
  return 1
fi

# Load dependencies.
pmodload 'helper'

# Source module files.
source "${0:h}/alias.zsh"

# Docker Machine
if (( $+commands[docker-machine] )); then
  eval "$(docker-machine env)"
fi

