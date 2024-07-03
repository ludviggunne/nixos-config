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

    videoDrivers = [ "intel" ];
    deviceSection = ''
      Option "DRI" "2"
      Option "Tearfree" "true"
    '';
  };
}
