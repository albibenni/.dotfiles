alias pn=pnpm
alias vim=nvim
alias python=python3

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=amuse
#amuse, robbyrussell, af-magic

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export XDG_CONFIG_HOME=$HOME/.config

PERSONAL=$XDG_CONFIG_HOME/personal
source $PERSONAL/env
for i in `find -L $PERSONAL`; do
    source $i
done
# source /usr/share/doc/fzf/examples/key-bindings.zsh
# source /usr/share/doc/fzf/examples/completion.zsh

export NRDP="$HOME/work/nrdp"
export NRDP_BUILDS="$HOME/work/builds"
export CC="clang-12"
export CXX="clang++-12"
export PYTHONBREAKPOINT="pudb.set_trace"
#export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share/flatpak/exports/bin
export GIT_EDITOR=$VIM
#export N_PREFIX="$HOME/.local/n"
export N_PREFIX="/usr/local/n"
export DOTFILES=$HOME/.dotfiles
export CONFIG=$HOME/.config
export BIN=$HOME/.config/bin
export BUN_INSTALL="$HOME/.bun"

export PATH=$CONFIG/i3/i3exit:$PATH
export PATH=$PATH:$CONFIG/i3
export PATH=$PATH:$BIN/startup

addToPathFront $HOME/.zig
addToPathFront $BUN_INSTALL/bin
addToPathFront $HOME/.local/.npm-global/bin
addToPathFront $HOME/.config/tmux/scripts
addToPathFront $HOME/.config/scripts
addToPathFront $HOME/.local/bin
addToPathFront $N_PREFIX/bin/
addToPathFront $CONFIG/i3
addToPath /usr/local/go/bin



# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^s "source ~/.zshrc\n"

# catr() {
#     tail -n "+$1" $3 | head -n "$(($2 - $1 + 1))"
# }
#
# validateYaml() {
#     python -c 'import yaml,sys;yaml.safe_load(sys.stdin)' < $1
# }
#
# goWork() {
#     cp ~/.npm_work_rc ~/.npmrc
# }
#
# goPersonal() {
#     cp ~/.npm_personal_rc ~/.npmrc
# }
#
# addThrottle() {
#     local kbs="kbps"
#     echo $kbs
#     echo "About to throttle to $1 $kbs"
#     echo "sudo tc qdisc add dev wlp59s0 handle 1: root htb default 11"
#     echo "sudo tc class add dev wlp59s0 parent 1: classid 1:1 htb rate $1$kbs"
#     echo "sudo tc class add dev wlp59s0 parent 1:1 classid 1:11 htb rate $1$kbs"
#     sudo tc qdisc add dev wlp59s0 handle 1: root htb default 11
#     sudo tc class add dev wlp59s0 parent 1: classid 1:1 htb rate $1$kbs
#     sudo tc class add dev wlp59s0 parent 1:1 classid 1:11 htb rate $1$kbs
# }
#
# removeThrottle() {
#     sudo tc qdisc del dev wlp59s0 root
# }
#
# cat1Line() {
#     cat $1 | tr -d "\n"
# }
#
# ioloop() {
#     FIFO=$(mktemp -u /tmp/ioloop_$$_XXXXXX ) &&
#     trap "rm -f $FIFO" EXIT &&
#     mkfifo $FIFO &&
#     ( : <$FIFO & ) &&    # avoid deadlock on opening pipe
#     exec >$FIFO <$FIFO
# }
#
# eslintify() {
#     cat $1 > /tmp/file_to_eslint
#     npx eslint
# }
export PATH="/opt/homebrew/opt/llvm@12/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin"

# pnpm
export PNPM_HOME="/home/benni/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
