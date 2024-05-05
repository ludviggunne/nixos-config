{
  config,
  pkgs,
  ...
}:

{
  imports = [ ./programs ];

  home = {
    username = "ludviggl";
    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;
}
