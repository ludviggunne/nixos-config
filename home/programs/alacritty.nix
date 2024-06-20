{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    alacritty
  ];

  programs.alacritty = {
    enable = true;
    settings = {
      shell = "zsh";
      font = {
        size = 6.0;
        normal = {
          family = "Dejavu Sans Mono";
        };
      };
      window = {
        dimensions = { columns = 130; lines = 35; };
        mouse.hide_when_typing = true;
      };
      cursor = {
        vi_mode_style = { shape = "Block"; blinking = "Always"; };
      };
    };
  };
}
