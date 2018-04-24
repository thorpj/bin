

append_path_suffix '$HOME/.rbenv/bin'
append_path_suffix '$HOME/.rbenv/plugins/ruby-build/bin'
append_path_suffix '$HOME/.tmuxifier/bin'
append_path_suffix '$HOME/bin'

add_bashrc_alias 'tail_latest' 'tail -fn 100 "$(ls -at | head -n 1)"'
add_bashrc_command 'eval "$(rbenv init -)"'
add_profile_command 'eval "$(tmuxifier init -)"'