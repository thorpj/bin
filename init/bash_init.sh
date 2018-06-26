pkg="rbenv"
if ! dpkg --get-selections | grep -q "^$pkg[[:space:]]*install$" >/dev/null; then
    append_path_suffix '$HOME/.rbenv/bin'
    append_path_suffix '$HOME/.rbenv/plugins/ruby-build/bin'
    add_bashrc_command 'eval "$(rbenv init -)"'
    add_profile_command 'eval "$(tmuxifier init -)"'
fi
if [ -d "$HOME/.tmuxifier" ]; then
    append_path_suffix '$HOME/.tmuxifier/bin'
fi
append_path_suffix '$HOME/bin'

add_bashrc_alias 'tail_latest' 'tail -fn 100 "$(ls -at | head -n 1)"'
