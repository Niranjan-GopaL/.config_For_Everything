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

# code specific
alias p=python3
alias rc=rustc
alias ca=cargo
alias nrd="npm run dev"
alias ni="npm i"
alias gacp="git add . && git commit -m 'Add all' && git push"