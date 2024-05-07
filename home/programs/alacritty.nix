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
        size = 10.0;
        normal = {
          family = "Input Mono";
          style = "Regular";
        };
      };
      #mouse.hide_when_typing = true;
    };
  };
}
