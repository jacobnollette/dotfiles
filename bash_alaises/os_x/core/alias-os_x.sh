# finder
alias show_dots='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder';
alias hide_dots='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder';


alias blue_off='blueutil power 0';
alias blue_on='blueutil power 1';

alias wifi_off="networksetup -setairportpower en0 off";
alias wifi_on="networksetup -setairportpower en0 on";
alias wifi_list="airport -s";
alias wifi_join="networksetup -setairportnetwork en0"

alias bonjouroff="sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist";
alias bonjouron="sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.mDNSResponder.plist";





alias dnsflush='sudo killall -HUP mDNSResponder';
alias apacherestart='sudo apachectl restart';
alias sshrestart='sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist; sudo launchctl load /System/Library/LaunchDaemons/ssh.plist;';





# server services
alias vpnrestart='sudo serveradmin stop vpn; sudo serveradmin start vpn;';
alias vpnstart="sudo serveradmin start vpn;";
alias vpnstop="sudo serveradmin stop vpn;";

alias dnsrestart="sudo serveradmin stop dns; sudo serveradmin start dns;"
alias dnsstart="sudo serveradmin start dns;";
alias dnsstop="sudo serveradmin stop dns;";

alias dhcprestart="sudo serveradmin stop dhcp; sudo serveradmin start dhcp;";
alias dhcpstart="sudo serveradmin start dhcp;";
alias dhcpstop="sudo serveradmin stop dhcp;";
