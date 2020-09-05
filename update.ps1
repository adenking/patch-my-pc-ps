$url = "https://patchmypc.com/freeupdater/PatchMyPC.exe"
$output = "$PSScriptRoot\PatchMyPC.exe"
$start_time = Get-Date

Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

Start-Process -FilePath "$PSScriptRoot\PatchMyPC.exe"