{ config, pkgs, ... }:
# define text in gitignore files
let
  gitignore = ''
    # General
    .DS_Store
    .AppleDouble
    .LSOverride

    # Icon must end with two \r
    Icon\r\r

    # Thumbnails
    ._*

    # Files that might appear in the root of a volume
    .DocumentRevisions-V100
    .fseventsd
    .Spotlight-V100
    .TemporaryItems
    .Trashes
    .VolumeIcon.icns
    .com.apple.timemachine.donotpresent

    # Directories potentially created on remote AFP share
    .AppleDB
    .AppleDesktop
    Network Trash Folder
    Temporary Items
    .apdisk

    # Acme Editor config files
    acme.dump
    acme.guide

    # VSCode
    .vscode
  '';
in {
  programs.git = {
    enable = true;
    # Git user information
    userName = "Lilly";
    userEmail = "lilly@lillycat.tech";
    aliases = {
      st = "status";
      co = "checkout";
    };
    extraConfig = {
      core = {
        pager = "less";
        excludesfile = "~/.config/git/.gitignore_global";
      };
      # Set default branch name to main, not master
      init = { defaultBranch = "main"; };
    };
  };

  home.file.gitignore_global = {
    target = ".config/git/.gitignore_global";
    text = gitignore;
  };
}
