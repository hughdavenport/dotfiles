# Adapted from https://stackoverflow.com/a/34407620
function uriencode_arg { jq -nr --arg v "$1" '$v|@uri'; }
function uriencode_post { jq -sRr '@uri'; }
function uriencode { if [ -z "$1" ]; then uriencode_post; else uriencode_arg "$1"; fi }

# Adapted from https://stackoverflow.com/a/37840948
function uridecode_arg { : "${*//+/ }"; echo -e "${_//%/\\x}"; }
function uridecode { if [ -z "$1" ]; then uridecode_arg "$(cat)"; else uridecode_arg "$1"; fi }
