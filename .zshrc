# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/.cargo/bin:$PATH"

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Aliases ---------------------------------------------------->
alias showA="cat ~/.zshrc | grep 'alias'"
alias l="ls -lah"
alias c=clear
alias e=explorer.exe

alias co="code ."
alias czsh="code ~/.zshrc"

# path to stuff
alias gotoconfig="cd /mnt/c/Users/HP/OneDrive/Desktop/.config_For_Everything"
alias gotocodepr="cd /mnt/d/Code\ Practise/"
alias gotorustbasics="cd /mnt/d/Code\ Practise/Rust/Learning-Rust-By-Example/basics"

# code specific
alias p=python3

alias nrd="npm run dev"
alias ni="npm i"

alias rc=rustc
alias ca=cargo
alias cr='function _cargobin(){cargo run --bin "$1"}; _cargobin'
alias cqr='function _cargoqbin(){cargo run -q --bin "$1"}; _cargoqbin'

alias gc='function _gc() { git add . && git commit -m "$1"; }; _gc'
alias gcp='function _gcp() { git add . && git commit -m "$1" && git push; }; _gcp'
alias gcA='function _gcA() { git add "$1"  && git commit -m "$2" ; }; _gcA'
alias gp="git push"
alias gs="git status"