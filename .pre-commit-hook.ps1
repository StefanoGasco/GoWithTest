$readme = Get-Content README.md
$advancement_count = (Get-ChildItem -Directory).Count
$res_readme = $readme -replace '[0-9]+', $advancement_count
Out-File -FilePath .\README.md -InputObject $res_readme -Encoding ASCII
git add .\README.md