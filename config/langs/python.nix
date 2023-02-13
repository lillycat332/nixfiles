{ config, pkgs, ...}:
{
  home.packages = with pkgs; [
    # Declare python packages we use
    (python3.withPackages (p: with p; [
      flask
      matplotlib
      numpy
      pandas
      pygame
      requests
      scipy
      z3
    ]))
  ];
}