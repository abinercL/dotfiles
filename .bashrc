eval "$(oh-my-posh init bash --config 'C:/Users/AbinercL/.dotfiles/temasTerminal.omp.json')"
eval "$(zoxide init bash)"

alias cd='z'
alias cat='bat'
alias grep='rg'
alias diff='delta'
alias find='fd'
alias exa_="eza --icons -s type --git";
alias l="exa_ -l --git-ignore -I \"config\"";
alias la="exa_ -la";
alias ls="exa_ --git-ignore -I \"config\"";
alias lsa="exa_ --git-ignore";
alias lt="exa_ -T --git-ignore -I \"config\"";
alias lta="exa_ -Ta --git-ignore -I .git";
