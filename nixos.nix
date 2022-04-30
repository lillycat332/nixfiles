{
	# Import common.nix, with all of our packages and configs, then define any linux "platform specific" configs in here
	imports = [ ./common.nix ];
	pkgs = import sources.nixpkgs-unstable { };
	home.username = ("lillycham");
  home.homeDirectory = "/home/lillycham";
	home.packages = with pkgs; [
		chromium
		doas
		clang
	];
}