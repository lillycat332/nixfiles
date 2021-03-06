{

  programs.fish = {
    enable = true;
    shellAbbrs = {
      a = "acme";
      hms = "home-manager switch";
      m = "make";
      n = "nvim";
      nix-install = "nix-env -iA nixpkgs.";
      nrun = "nix run nixpkgs#";
      o = "open";
      pwsh = "pwsh -nologo"; # Set powershell to start with nologo
    };

    # Initialize starship, export Nix's SSL Cert to prevent SSL errors on macOS
    shellInit = ''
      starship init fish | source
      set -U NIX_SSL_CERT_FILE /nix/var/nix/profiles/default/etc/ssl/certs/ca-bundle.crt
    '';
    functions = {
      # MOTD message
      fish_greeting = {
        description = "Greeting to show when starting a fish shell";
        body =
          "  echo Welcome to fish, the friendly interactive shell\n  echo -n It\\'s (set_color yellow;date ; set_color normal)\n  echo on $hostname\n  echo For help with using fish type (set_color green; echo help; set_color normal)\n  echo Have a great day!\n";
      };
      mkdcd = {
        description = "Make a directory tree and enter it";
        body = "mkdir -p $argv[1]; and cd $argv[1]";
      };
    };
  };
}
