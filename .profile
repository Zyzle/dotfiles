# node version manager (if exists)
NVMRC=~/.nvmrc
if test -f "$NVMRC"; then
    source $NVMRC
fi

source ~/.aliases