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
        };
      in
      {
        select = common // { };
        normal = common // { };
      };
    };
  };
}
