{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    ardour
    surge
    swh_lv2
    tunefish
    mod-distortion
    libsndfile
    readline
    lv2
  ];
}
