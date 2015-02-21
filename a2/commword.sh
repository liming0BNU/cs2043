#! /bin/bash
cat tweet* | tr -s '[[:punct:][:space:]]' '\n' | tr '[A-Z]' '[a-z]' | sort -f | uniq -c | sort -f -r | head -10 > ../most_common.txt