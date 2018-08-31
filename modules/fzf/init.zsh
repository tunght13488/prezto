if (( ! $+commands[fzf] )); then
  return 1
fi

if [[ -r /usr/share/fzf/completion.zsh ]]; then
  source /usr/share/fzf/completion.zsh
fi

if [[ -r /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi

if [[ -r ${0:h}/functions.zsh ]]; then
  source ${0:h}/functions.zsh
fi
