#!/bin/bash

for file in files/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        first_char="$(echo "$filename" | cut -c1)"
        lowercase_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')
        
        mv "$file" "$lowercase_char/"
    
    fi
done