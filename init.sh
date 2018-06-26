cd "$HOME/bin"
mkdir -p "init/sensitive"

source "init/include.sh"


for d in $HOME/bin/*; do
    chmod +x $d
done

for d in $HOME/bin/init/*.sh; do
    chmod +x $d
done







