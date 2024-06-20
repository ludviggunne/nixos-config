{
  pkgs,
  lib,
  ...
}:

let
  username = "ludviggl";
in

{
  imports = [ ./xfce.nix ];

  users.users.${username} = {
    isNormalUser = true;
    description = "Ludvig Gunne Lindström";
    extraGroups = [ "networkmanager" "wheel" "audio" ];
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
  };

  # Garbage collection
  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
    options = lib.mkDefault "--delete-older-than 7d";
  };

  nixpkgs.config.allowUnfree = true;

  # Locale
  time.timeZone = "Europe/Stockholm";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "sv_SE.UTF-8";
    LC_IDENTIFICATION = "sv_SE.UTF-8";
    LC_MEASUREMENT = "sv_SE.UTF-8";
    LC_MONETARY = "sv_SE.UTF-8";
    LC_NAME = "sv_SE.UTF-8";
    LC_NUMERIC = "sv_SE.UTF-8";
    LC_PAPER = "sv_SE.UTF-8";
    LC_TELEPHONE = "sv_SE.UTF-8";
    LC_TIME = "sv_SE.UTF-8";
  };
  console.keyMap = "sv-latin1";

  # Sound
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # OpenGL
  hardware.opengl.enable = true;

  services.printing.enable = true;

  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [
    helix
    wget
    curl
    zsh
  ];

  fonts.packages = with pkgs; [
    terminus_font
    dina-font
    envypn-font
    agave
    comic-mono
  ];
}
