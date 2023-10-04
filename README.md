# Eng-Heb Keyboard Auto Switcher README

## Description
This script allows you to automatically convert an English text to Hebrew and vice versa, copied to the clipboard. 

Have you ever written a line in Hebrew then look at the screen and see that it's in English or the opposite, writing in Eng just to find out it's Hebrew? This script is the solution for that frustration!

## HOW IT WORKS
The script declares an associative array named `letters` which works as a very simple dictionary to match each letter in English to a corresponding Hebrew character.

Example:
```bash
letters["a"]="ש."
letters["b"]="נ"
letters["c"]="ב"
letters["d"]="ג"
```
This continues up to the last letter in the alphabet.

The script then loads the latest text from the clipboard and replaces each English character with the corresponding Hebrew character using a function named `replace_characters`.

The resulting text is copied back to the clipboard and (optionally) echoed to the stdout.

## Requirements
This script requires `xclip` to be installed which is a command line interface to X selections (clipboard).
