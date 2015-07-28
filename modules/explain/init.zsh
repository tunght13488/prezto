#
# Provides Explain function using Mankier API
#
# Authors:
#   Tung Ha <tunght13488@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[curl] )); then
  return 1
fi

# Load dependencies.
pmodload 'helper'

# Source module files.
source "${0:h}/alias.zsh"
