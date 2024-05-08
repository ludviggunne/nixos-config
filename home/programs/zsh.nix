{
  pkgs,
  host,
  ...
}:

{
  home.packages = with pkgs; [
    zsh
    oh-my-zsh
    eza
  ];

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake ~/nixos-config/#${host}";
      config = "hx ~/nixos-config";
      ls = "eza -l";
    };

    initExtra = ''
      eval "$(direnv hook zsh)"
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "afowler";
    };
  };
}
