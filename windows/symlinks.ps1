# Sublime Text 3
cmd /c mklink /D "C:\Users\" + $env:username + "\AppData\Roaming\Sublime Text 3\Packages" ".\sublime\Packages"
cmd /c mklink /D "C:\Users\" + $env:username + "\AppData\Roaming\Sublime Text 3\Installed Packages" ".\sublime\Installed Packages"

# Atom
cmd /c mklink /D "C:\Users\" + $env:username + "\.atom" ".\atom"