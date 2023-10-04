# English-Hebrew Keyboard Auto Switcher README

## Project Overview
The English-Hebrew Keyboard Auto Switcher is a script that facilitates automatic conversion of text between English and Hebrew. It recognises and converts input text copied to the clipboard between the two languages, eradicates miscommunication by ensuring that multilingual texts are accurately represented in their respective compositions. If you've ever unintentionally typed English instead of Hebrew, or vice versa this utility could help relieve language switch woes. 

## Functional Mechanism
The script initially sets up an associative array codenamed `letters`, operating as a rudimentary dictionary that pairs each English alphabet with its analog Hebrew character.

Here's an illustrative example:
```bash
letters["a"]="ש."
letters["b"]="נ"
letters["c"]="ב"
letters["d"]="ג"
```
This pattern is consistent through the conclusion of the English alphabet.

In procedure, the script retrieves the most recent text from the clipboard, substitutes each English character with a corresponding Hebrew character leveraging the function `replace_characters`.

The resultant translated text is consequently copied back onto the clipboard and, optionally, printed to the stdout.

## Execution instructions
To execute this script, create a `.desktop` shortcut on your desktop using the following command:

```bash
vim reverso.desktop
```

Proceed to paste the following code inside the shortcut file, replacing the paths to match that of your files location:

```bash
[Desktop Entry]
Name=Lang Shortcut
Exec=sudo /bin/bash /path/to/reverso.sh
Type=Application
Terminal=true
Icon=/path/to/icon.png
```

Following that, grant trust to the file using:

```bash
gio set ~/Desktop/reverso.desktop  metadata::trusted true
```

Then, include sudo bypass for the command using:

```bash
sudo visudo
```

and append the line:

```bash
yourusername ALL=(ALL:ALL) NOPASSWD: /bin/bash /path/to/reverso.sh
```

## Dependency
This script is dependent on `xclip` command line interface to X selections (clipboard). Use the following commands to install it:

```bash
sudo apt update 
sudo apt install xclip
```
