function nmap_all () {
	nmap -sS -sU -PN -p 1-65535 "$@";
}

function nmap_all_input () {
	nmap -sS -sU -PN -iL -p 1-65535 "$@";
}
