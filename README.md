Setup
==================
```
git clone git@github.com:JLoppert/Preferences.git
```

Sublime Text
==================
Windows
```
cmd /c mklink /D "C:\Users\<user_name>\AppData\Sublime Text 3\Packages" ".\sublime\Packages"
cmd /c mklink /D "C:\Users\<user_name>\AppData\Sublime Text 3\Installed Packages" ".\sublime\Installed Packages"
```

OSX
```
ln -s <full_path>/sublime/Packages /Users/<user_name>/Library/Application Support/Sublime Text 3/Packages
ln -s <full_path>/sublime/Installed\ Packages /Users/<user_name>/Library/Application Support/Sublime Text 3/Installed\ Packages
```

Atom
==================
Windows
```
cmd /c mklink /D "C:\Users\<user_name>\.atom" ".\atom"
```

Bash
==================
```
ln -s bash_profile ~/.bash_profile
ln -s git_completion ~/.git_completion
```

PowerShell
==================
```
cmd /c mklink "C:\Users\<user_name>\My Documents\WindowsPowershell\Microsoft.PowerShell_profile.ps1" "PowerShell_profile.ps1"
```
