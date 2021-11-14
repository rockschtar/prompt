Function WhatIsMyIPCommand { Invoke-RestMethod ipinfo.io/ip }
Function WttrCommand { Invoke-RestMethod http://wttr.in }
Function SpeedtestCommand { wsl speedtest }
Function Googler() {
    $search = $args -join " "
    wsl googler $search
}

Set-Alias -Name whatismyip -Value WhatIsMyIPCommand
Set-Alias -Name wttr -Value WttrCommand
Set-Alias -Name speedtest -Value SpeedtestCommand
Set-Alias -Name google -Value Googler

Import-Module PowerColorLS

Invoke-Expression (& {
        $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
    })

oh-my-posh --init --shell pwsh --config ~\prompt\rockschtar.hunk.omp.json | Invoke-Expression

winfetch