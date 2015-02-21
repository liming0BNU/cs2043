#! /bin/bash
wc -w tweet* | sort -k 1 | awk '{print $1}' | tail -2 | head -1 > ../max_words.txt
wc -w tweet* | sort -k 1 | awk '{print $1}' | head -1 > ../min_words.txt
tot=$(wc -w tweet* | sort -k 1 | awk '{print $1}' | tail -1)
echo "$tot / 2000" | bc > ../avg_words.txt