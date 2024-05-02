{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.helix ];

  programs.alacritty = {
    enable = true;
    settings = {
      shell = "zsh";
      font.size = 6.0;
    };
  };
}
