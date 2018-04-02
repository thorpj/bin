line_exists ()
{
    line="$1"
    path="$2"
    if grep -Fxq "$line" "$path"; then
        return 0
    else
        return 1
    fi
}


add_bashrc_alias ()
{
    key="$1"
    command="$2"

    line='alias '"$key="\'$command\'
    path="$HOME/.bashrc"

    if [ "$(line_exists "$line" "$path")" = false ]; then
        echo "$line" >> "$path"
    fi
}

add_bashrc_command ()
{
    line="$1"
    path="$HOME/.bashrc"
    if [ "$(line_exists "$line" "$path")" = false ]; then
        echo "$line" >> "$path"
    fi
}

add_profile_command ()
{
    line="$1"
    path="$HOME/.profile"
    if [ "$(line_exists "$line" "$path")" = false ]; then
        echo "$line" >> "$path"
    fi
}


append_path_suffix ()
{
    addition="$1"
    if ! echo "$PATH" | /bin/grep -Eq "(^|:)$1($|:)" ; then
        echo 'export PATH=$PATH'$addition >> $HOME/.profile
    fi

}

