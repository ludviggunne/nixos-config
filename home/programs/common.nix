{
  lib,
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    discord
    firefox
    cinny-desktop
  ];
}
