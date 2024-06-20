{
  pkgs,
  config,
  ...
}:

{
  config.services.xserver = {
    enable = true;
    layout = "se";
    xkbVariant = "";

    desktopManager = {
      xterm.enable = false;
      xfce.enable = true;
    };

    displayManager.defaultSession = "xfce";
  };
}
