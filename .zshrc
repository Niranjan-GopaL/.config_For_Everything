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




# ---------------------------- abbrev-alias in zsh ------------------------------------------------------------- 


# declare a list of expandable aliases to fill up later
typeset -a ealiases
ealiases=()

# write a function for adding an alias to the list mentioned above
function abbrev-alias() {
    alias $1
    ealiases+=(${1%%\=*})
}

# expand any aliases in the current line buffer
function expand-ealias() {
    if [[ $LBUFFER =~ "\<(${(j:|:)ealiases})\$" ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle magic-space
}
zle -N expand-ealias

# Bind the space key to the expand-alias function above, so that space will expand any expandable aliases
bindkey ' '        expand-ealias
bindkey '^ '       magic-space              # control-space to bypass completion
bindkey -M isearch " "      magic-space     # normal space during searches

# A function for expanding any aliases before accepting the line as is and executing the entered command
expand-alias-and-accept-line() {
    expand-ealias
    zle .backward-delete-char
    zle .accept-line
}
zle -N accept-line expand-alias-and-accept-line









# Aliases ---------------------------------------------------->
abbrev-alias showA="cat ~/.zshrc | grep 'alias'"
abbrev-alias l="ls -lAh"
abbrev-alias c=clear
abbrev-alias e=explorer.exe

alias co="code ."
alias czsh="code ~/.zshrc"

# path to stuff
alias gotoconfig="cd /mnt/c/Users/HP/OneDrive/Desktop/.config_For_Everything"
alias gotocodepr="cd /mnt/d/Code\ Practise/"
alias gotorustbasics="cd /mnt/d/Code\ Practise/Rust/Learning-Rust-By-Example/basics"

# code specific
abbrev-alias p=python3
abbrev-alias q=g++
abbrev-alias qq="./a.out"


abbrev-alias nrd="npm run dev"
abbrev-alias  yd="yarn dev"
abbrev-alias ni="npm i"
abbrev-alias nest="npx expo start --tunnel"

abbrev-alias rc=rustc
abbrev-alias ca=cargo
alias cr='function _cargobin(){cargo run --bin "$1"}; _cargobin'
alias cqr='function _cargoqbin(){cargo run -q --bin "$1"}; _cargoqbin'
alias ce='function _p() {gcc "$1" && ./a.out;}; _p'
alias cc='function _p() {g++ "$1" && ./a.out;}; _p';

abbrev-alias g='git '
abbrev-alias gc='git commit -m "'
abbrev-alias ga='git add '
abbrev-alias gac='git add . && git commit -m " '
abbrev-alias gcp='function _gcp() { git add . && git commit -m "$1" && git push; }; _gcp'
abbrev-alias gcA='function _gcA() { git add "$1"  && git commit -m "$2" ; }; _gcA'
abbrev-alias gp="git push"
abbrev-alias gs="git status -s"
abbrev-alias gl="git log --oneline"

abbrev-alias lo="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
