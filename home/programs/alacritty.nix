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
      font = {
        size = 7.0;
        normal = {
          family = "Input Mono";
          style = "Regular";
        };
      };
    };
  };
}
