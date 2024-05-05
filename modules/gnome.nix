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
      gnome.enable = true;
    };

    displayManager = {
      gdm.enable = true;
    };
  };

  config.environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    cheese
    gnome-music
    gnome-terminal
    gedit
    epiphany
    geary
    evince
    gnome-characters
    totem
    tali
    iagno
    hitori
    atomix
  ]);
}
