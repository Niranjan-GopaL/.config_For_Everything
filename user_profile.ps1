# Prompt 
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt Paradox

# Load prompt configuration from the config we made in niranjan.omp.json
#function Get-ScriptDirectory { Split-Path $MyInvocation.SciptName }
#$PROMPT CONFIG = Join



# Alias
Set-Alias vi nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
