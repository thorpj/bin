cd "$HOME/bin"
mkdir -p "init/sensitive"

source "init/include.sh"
source "init/helpers/"*



source "init/bash_init.sh"
for d in $HOME/bin/*; do
    chmod +x $d
done







