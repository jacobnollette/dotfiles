


#		finder / file system
alias show_dots='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder';
alias hide_dots='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder';



#   hd utils
alias image_open="hdiutil attach -stdinpass";
alias secure_erase="rm -P";
alias shred="secure_erase";


alias nuke_webcam="sudo killall VDCAssistant";
alias webcam_nuke="sudo killall VDCAssistant";


#		bluetooth networking
#alias blue_off='blueutil power 0';
#alias blue_on='blueutil power 1';


#		networking
alias wifi_flush="sudo route -n flush; sudo route -n flush; sudo route -n flush; wifi_restart;";
#		wifi networking
alias wifi_off="networksetup -setairportpower en0 off";
alias wifi_on="networksetup -setairportpower en0 on";
alias wifi_restart="wifi_off; wifi_on;";
alias wifi_list="sudo airport -s";
alias wifi_join="networksetup -setairportnetwork en0"
alias wifi_sniff="sudo airport sniff 1";



#		system services
alias dns_flush='sudo killall -HUP mDNSResponder';
alias apache_restart='sudo apachectl restart';


alias ssh_stop="sudo launchctl stop com.openssh.sshd";
alias ssh_start="sudo launchctl start com.openssh.sshd";
alias ssh_restart="sudo launchctl stop com.openssh.sshd; sudo launchctl start com.openssh.sshd;";

alias tor_start="launchctl load /usr/local/opt/tor/homebrew.mxcl.tor.plist";
alias tor_stop="launchctl unload /usr/local/opt/tor/homebrew.mxcl.tor.plist";
alias tor_restart="tor_stop; tor_start; tail -f /usr/local/var/log/tor.log;"


#		server services
alias vpn_restart='sudo serveradmin stop vpn; sudo serveradmin start vpn;';
alias vpn_start="sudo serveradmin start vpn;";
alias vpn_stop="sudo serveradmin stop vpn;";

alias dns_restart="sudo serveradmin stop dns; sudo serveradmin start dns;"
alias dns_start="sudo serveradmin start dns;";
alias dns_stop="sudo serveradmin stop dns;";

alias dhcp_restart="sudo serveradmin stop dhcp; sudo serveradmin start dhcp;";
alias dhcp_start="sudo serveradmin start dhcp;";
alias dhcp_stop="sudo serveradmin stop dhcp;";





alias screensharing_off="sudo launchctl unload /System/Library/LaunchDaemons/com.apple.screensharing.plist;";
alias screensharing_on="sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist;";
alias screensharing_restart="screensharing_off; screensharing_on;";
