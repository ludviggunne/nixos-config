{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.helix ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "naysayer";
      editor = {
        line-number = "relative";
        statusline.center = [ "version-control" ];
      };
      keys.select = {
        C-h = [ "flip_selections" ];
      };
    };
  };
}
