#!/usr/bin/env pwsh

$TOT = 19
$readme = Get-Content README.md
$advancement_count = (Get-ChildItem -Directory).Count
$advancement_perc = [math]::Round(($advancement_count*100)/$TOT)
$res_readme = $readme -replace '[0-9]+', $advancement_perc
Out-File -FilePath .\README.md -InputObject $res_readme -Encoding ASCII
git add .\README.md