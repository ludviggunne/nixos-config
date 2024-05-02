{
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./i3
    #./shell
    ./programs
  ];

  home = {
    username = "ludviggl";
    #homeDirectory = /home/${username};

    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;
}
