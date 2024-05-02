{
  pkgs,
  ...
}:

{
  environment.pathsToLink = [ "/libexec" ];
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    displayManager = {
      defaultSession = "none+i3";
      lightdm.enable = false;
      gdm.enable = true;
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        rofi
        i3blocks
        i3lock
        i3status
        picom
        feh
        acpi
        arandr
        i3-gaps
        xbindkeys
        sysstat
        dunst
        xorg.xbacklight
      ];
    };

    layout = "se";
    xkbVariant = "";
  };

  services.gvfs.enable = true;
}
