{
  pkgs,
  ...
}:

{
  environment.pathsToLink = [ "/libexec" ];
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = true;
      gnome.enable = true;
    };

    displayManager = {
      #defaultSession = "none+i3";
      gdm.enable = true;
    };

    windowManager.i3 = {
      enable = false;
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
