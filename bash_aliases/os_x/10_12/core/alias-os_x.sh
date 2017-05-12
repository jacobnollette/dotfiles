


#		finder / file system
alias show_dots='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder';
alias hide_dots='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder';



#   hd utils
alias image_open="hdiutil attach -stdinpass";
alias secure_erase="srm -rfv -s";


alias nuke_webcam="sudo killall VDCAssistant";


#		bluetooth networking
#alias blue_off='blueutil power 0';
#alias blue_on='blueutil power 1';



#		wifi networking
alias wifi_off="networksetup -setairportpower en0 off";
alias wifi_on="networksetup -setairportpower en0 on";
alias wifi_restart="wifi_off; wifi_on;";
alias wifi_list="sudo airport -s";
alias wifi_join="networksetup -setairportnetwork en0"
alias wifi_sniff="sudo airport sniff 1";



#		system services
alias dnsflush='sudo killall -HUP mDNSResponder';
alias apacherestart='sudo apachectl restart';


alias ssh_stop="sudo launchctl stop com.openssh.sshd";
alias ssh_start="sudo launchctl start com.openssh.sshd";
alias ssh_restart="sudo launchctl stop com.openssh.sshd; sudo launchctl start com.openssh.sshd;";

alias tor_start="launchctl load /usr/local/opt/tor/homebrew.mxcl.tor.plist";
alias tor_stop="launchctl unload /usr/local/opt/tor/homebrew.mxcl.tor.plist";
alias tor_restart="tor_stop; tor_start; tail -f /usr/local/var/log/tor.log;"


#		server services
alias vpnrestart='sudo serveradmin stop vpn; sudo serveradmin start vpn;';
alias vpnstart="sudo serveradmin start vpn;";
alias vpnstop="sudo serveradmin stop vpn;";

alias dnsrestart="sudo serveradmin stop dns; sudo serveradmin start dns;"
alias dnsstart="sudo serveradmin start dns;";
alias dnsstop="sudo serveradmin stop dns;";

alias dhcprestart="sudo serveradmin stop dhcp; sudo serveradmin start dhcp;";
alias dhcpstart="sudo serveradmin start dhcp;";
alias dhcpstop="sudo serveradmin stop dhcp;";






