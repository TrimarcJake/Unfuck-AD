$NumberOfAdObjects = Get-Random –Minimum 1000000 -Maximum 9999999
for ($i = 1; $i -le $NumberOfAdObjects; $i++ ) {
    $Percent = $i / $NumberOfAdObjects * 100
    Write-Progress -Activity "Unfucking AD:" -Status "$i/$NumberOfAdObjects Complete." -PercentComplete $Percent
    Start-Sleep -Milliseconds ($i * 0.00000001 * [Math]::Pow($Percent,2))
}