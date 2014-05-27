Setup
==================
```
git clone git@github.com:JLoppert/Preferences.git
```

Sublime Text
==================

Windows (cmd)
```
mklink /D "C:\Users\<user_name>\AppData\Sublime Text 3\Packages" ".\sublime\Packages"
mklink /D "C:\Users\<user_name>\AppData\Sublime Text 3\Installed Packages" ".\sublime\Installed Packages"
```

OSX
```
ln -f ./sublime/Packages /Users/<user_name>/Library/Application Support/Sublime Text 3/Packages
ln -f ./sublime/Installed\ Packages /Users/<user_name>/Library/Application Support/Sublime Text 3/Installed\ Packages
```

Bash
==================
```
ln -f bash_profile ~/.bash_profile
ln -f git_completion ~/.git_completion
```