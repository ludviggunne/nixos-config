{
  pkgs,
  ...
}:

{
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    zsh-autoenv.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = [
      "update = sudo nixos-rebuild switch --flake ~/nixos-config/#lifebook"
      "config = hx ~/nixos-config"
    ];
    ohMyZsh = {
      enable = true;  
      plugins = [ "git" "history" ];
    };
  };
}
