{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.alacritty ];

  programs.alacritty = {
    enable = true;
    settings = {
      shell = "zsh";
      font = {
        size = 10.0;
        normal = {
          family = "Input Mono";
          style = "Regular";
        };
      };
      window = {
        dimensions = { columns = 130; lines = 35; };
      };
      cursor = {
        vi_mode_style = { shape = "Block"; blinking = "Always"; };
      };
    };
  };
}
