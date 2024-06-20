{
  lib,
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    discord
    cinny-desktop
    fzf
  ];
}
