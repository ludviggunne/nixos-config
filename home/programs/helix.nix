{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    helix
    nil
  ];

  programs.helix = {
    enable = true;
    themes = import ./helix-themes.nix;
    settings = {
      theme = "adwaita-dark";
      editor = {
        line-number = "relative";
        statusline.center = [ "version-control" ];
        cursor-shape.insert = "bar";
      };

      keys =
      let
        common = {
          C-h = [ "flip_selections" ];
          C-j = [ "goto_next_paragraph" ];
          C-k = [ "goto_prev_paragraph" ];
        };
      in
      {
        select = common // { };
        normal = common // {
          C-p = [ ":clipboard-paste-after" ];
          C-y = [ ":clipboard-yank" ];
        };
      };
    };
  };
}
