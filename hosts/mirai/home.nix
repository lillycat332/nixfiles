{ config, pkgs, ... }:
{
  imports = [ ../common.nix ];
  home = {
    packages = with pkgs; [ ];
  };
}
