function toc () {
function m () { grep -E "^#{${1:-1},${2:-2}} " | sed -E 's/(#+) (.+)/\1:\2:\2/g' | awk -F ":" '{ gsub(/#/,"  ",$1); gsub(/[ ]/,"-",$3); print $1 "- [" $2 "](#" tolower($3) ")" }'
} && res=$(cat "$*"| m 1 10) && echo "$res" && echo "$res"| pbcopy && echo "\nCopied to clip." }
