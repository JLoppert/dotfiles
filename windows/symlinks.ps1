$root = Split-Path $PSScriptRoot -Parent

# Sublime Text 3
cmd /c mklink /D ("C:\Users\" + $env:username + "\AppData\Roaming\Sublime Text 3\Packages") ($root + "\sublime\Packages")
cmd /c mklink /D ("C:\Users\" + $env:username + "\AppData\Roaming\Sublime Text 3\Installed Packages") ($root + "\sublime\Installed Packages")

# Atom
cmd /c mklink /D ("C:\Users\" + $env:username + "\.atom") ".\atom"