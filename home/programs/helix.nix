{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.helix ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "hex_steel";
      editor = {
        line-number = "relative";
        statusline.center = [ "version-control" ];
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
        normal = common // { };
      };
    };
  };
}
