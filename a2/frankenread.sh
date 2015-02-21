#! /bin/bash
cat frankenstein.txt | head -298 | tail -45 | tr -s '[[:punct:][:space:]]' '\n' | tr '[A-Z]' '[a-z]' | sort -f | uniq -c | sort -f -r | head -10 > most_common_frankenstein.txt