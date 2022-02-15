#!/usr/bin/env pwsh

$TOT = 19
$fileName = 'README.md'
$advancement_count = (Get-ChildItem -Directory).Count
$advancement_perc = [math]::Round(($advancement_count*100)/$TOT)
(Get-Content -Path $fileName -Raw) -replace '(https://progress-bar.dev)/[0-9]+', "`$1/$advancement_perc" | Set-Content -Path $fileName -noNewline
git add .\README.md