#! /bin/bash
wc -c tweet* | sort -k 1 | awk '{print $1}' | tail -2 | head -1 > ../max_chars.txt
wc -c tweet* | sort -k 1 | awk '{print $1}' | head -1 > ../min_chars.txt
tot=$(wc -c tweet* | sort -k 1 | awk '{print $1}' | tail -1)
echo "$tot / 2000" | bc > ../avg_chars.txt