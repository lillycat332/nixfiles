{
	home.file."lib/profile".text = ''
		path=(/Users/lillycham/.nix-profile/bin /nix/var/nix/profiles/default/bin /Users/lillycham/.cabal/bin /Library/Frameworks/Python.framework/Versions/3.9/bin /Users/lillycham/Library/Python/3.9/bin /usr/local/plan9/bin /Library/TeX/texbin /Users/lillycham/.ghcup/bin /usr/local/bin /opt/local/bin /usr/bin /bin /usr/sbin /sbin .)
		prompttext=`{ whoami }
		prompt=(`{ whoami }' @ mirai % ' '    ')
		NIX_SSL_CERT_FILE=/nix/var/nix/profiles/default/etc/ssl/certs/ca-bundle.crt
	'';
}