Function WhatIsMyIPCommand {Invoke-RestMethod ipinfo.io/ip}
Function WttrCommand {Invoke-RestMethod http://wttr.in}

Set-Alias -Name whatismyip -Value WhatIsMyIPCommand
Set-Alias -Name wttr -Value WttrCommand
Import-Module PowerColorLS

oh-my-posh --init --shell pwsh --config ~\prompt\rockschtar.hunk.omp.json | Invoke-Expression
