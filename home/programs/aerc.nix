{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [ aerc ];
  programs.aerc = {
    enable = true;
  };
}
