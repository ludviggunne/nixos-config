{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    ...
  }: {
    nixosConfigurations = {
      lifebook = nixpkgs.lib.nixosSystem rec {
        system = "x86_64-linux";
        modules = [
          ./hosts/lifebook

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;  
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = {
              inherit inputs;
              inherit system;
              host = "lifebook";
            };
            home-manager.users.ludviggl = import ./home;
            home-manager.backupFileExtension = "backup";
          }
        ];
      };
    };
  };
}
