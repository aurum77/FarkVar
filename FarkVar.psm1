function Fark-Var {
    $Diff = git.exe diff --color=always | Out-String
    if ($Diff -ne "") {
        $PlaySound = New-Object System.Media.SoundPlayer
        $PlaySound.SoundLocation = ".\farkvar.wav"
        $PlaySound.Play()
        Write-Host $Diff
    }
}

Export-ModuleMember -Function Fark-Var