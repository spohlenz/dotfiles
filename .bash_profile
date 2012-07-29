for file in ~/.dotfiles/.{bash_prompt,aliases,exports}; do
  [ -r "$file" ] && source "$file"
done
unset file

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
