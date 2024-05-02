{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.git ];

  programs.git = {
    enable = true;

    userName = "ludviggl";
    userEmail = "ludvig.gunne.lindstrom.dev@proton.me";
  };
}
