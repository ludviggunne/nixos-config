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
    ripgrep
    ranger
  ];

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake ~/nixos-config/#${host}";
      config = "hx ~/nixos-config";
      ls = "eza -l";
      rn = "ranger";
    };

    initExtra = ''
      eval "$(direnv hook zsh)"
      export EDITOR=hx
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "fzf" ];
      theme = "afowler";
    };
  };
}
