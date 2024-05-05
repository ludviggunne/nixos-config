{
  pkgs,
  host,
  ...
}:

{
  home.packages = [ pkgs.zsh pkgs.oh-my-zsh ];

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake ~/nixos-config/#${host}";
      config = "hx ~/nixos-config";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "afowler";
    };
  };
}
