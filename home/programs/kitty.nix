{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = {
    enable = true;
    font = {
      name = "Fira Mono";
      package = pkgs.fira-mono;
    };
    shellIntegration.enableZshIntegration = true;
    theme = "Corvine";
    settings = {
      remember_window_size = "no";
      initial_window_width = 1000;
      initial_window_height = 600;
      editor = "hx";
      mouse_hide_wait = 2;
      font_size = 10;
      enable_audio_bell = "no";
    };
  };
}
