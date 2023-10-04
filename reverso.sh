#!/bin/bash


# Declare an associative array (dictionary)
declare -A letters

#Addkey-valuepairstothedictionary
letters["a"]="ש."
letters["b"]="נ"
letters["c"]="ב"
letters["d"]="ג"
letters["e"]="ק"
letters["f"]="כ"
letters["g"]="ע"
letters["h"]="י"
letters["i"]="ן"
letters["j"]="ח"
letters["k"]="ל"
letters["l"]="ך"
letters["m"]="צ"
letters["n"]="מ"
letters["o"]="ם"
letters["p"]="פ"
letters["q"]="/"
letters["r"]="ר"
letters["s"]="ד"
letters["t"]="א"
letters["u"]="ו"
letters["v"]="ה"
letters["w"]="'"
letters["x"]="ס"
letters["y"]="ט'"
letters["z"]="ז"
letters["ש"]="a"
letters["נ"]="b"
letters["ב"]="c"
letters["ג"]="d"
letters["ק"]="e"
letters["כ"]="f"
letters["ע"]="g"
letters["י"]="h"
letters["ן"]="i"
letters["ח"]="j"
letters["ל"]="k"
letters["ך"]="l"
letters["צ"]="m"
letters["מ"]="n"
letters["ם"]="o"
letters["פ"]="p"
letters["/"]="q"
letters["ר"]="r"
letters["ד"]="s"
letters["א"]="t"
letters["ו"]="u"
letters["ה"]="v"
letters["'"]="w"
letters["ס"]="x"
letters["ט"]="y"
letters["ז"]="z"
letters[","]="ת"
letters["ת"]=","



# Get the latest value from the clipboard
clipboard_text=$(xclip -selection clipboard -o)


# Function to replace characters in a string with their values from the dictionary
replace_characters() {
    local input="$1"
    local output=""
    
    for ((i=0; i<${#input}; i++)); do
        char="${input:i:1}"
        if [ "${letters[$char]+exists}" ]; then
            output+="${letters[$char]}"
        else
            output+="$char"
        fi
    done
    
    echo "$output"
}

# Example usage
output_string=$(replace_characters "$clipboard_text")

# Copy the output string to the clipboard
echo -n "$output_string" | xclip -selection clipboard

# Optionally, you can also display the copied text
echo "Copied to clipboard: $output_string"