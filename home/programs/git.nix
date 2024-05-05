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

    extraConfig = {
      core.editor = "hx";
      alias = {
        "co" = "checkout";
        "br" = "branch";
        "ci" = "commit";
        "st" = "status";
        "ap" = "add --patch";
      };
    };

  };

  programs.lazygit.enable = true;
}
