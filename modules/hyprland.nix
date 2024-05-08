{
  pkgs,
  ...
}:

{
  programs.hyyprland = {
    enable = true;
    nvidiaPatches = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSOR = "1";
    NIXOS_OZONE_WL = "1";
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  environment.systemPackages = [
    (pkgs.waybar.overrideAttrs (previousAttrs: {
      mesonFlags = previousAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    }))
    pkgs.dunst
    pkgs.libnotify
    pkgs.rofi
  ];

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}
