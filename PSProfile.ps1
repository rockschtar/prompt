Function WhatIsMyIPCommand {Invoke-RestMethod ipinfo.io/ip}
Function WttrCommand {Invoke-RestMethod http://wttr.in}
Function SpeedtestCommand {wsl speedtest}

Set-Alias -Name whatismyip -Value WhatIsMyIPCommand
Set-Alias -Name wttr -Value WttrCommand
Set-Alias -Name speedtest -Value SpeedtestCommand
Import-Module PowerColorLS

Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
})

oh-my-posh --init --shell pwsh --config ~\prompt\rockschtar.hunk.omp.json | Invoke-Expression
