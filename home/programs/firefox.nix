{
  pkgs,
  ...
}:

{
  home.packages = [ pkgs.firefox ];
  programs.firefox = {
    enable = true;
    profiles.ludviggl = {

      bookmarks = [
        {
          name = "Gmail";
          tags = [ "gmail" ];
          keyword = "gmail";
          url = "https://mail.google.com/mail/u/0/#inbox";
        }
        {
          name = "Github";
          tags = [ "github" ];
          keyword = "github";
          url =  "https://github.com/";
        }
        {
          name = "Zig docs";
          tags = [ "zig" ];
          keyword = "zig";
          url = "https://ziglang.org/documentation/master/std/#";
        }
      ];

      search.default = "DuckDuckGo";
      search.engines = {
        "Nix Packages" = {
          urls = [{
            template = "https://search.nixos.org/packages";
            params = [
              { name = "type"; value = "packages"; }
              { name = "query"; value = "{searchTerms}"; }
            ];
          }];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@nixpkgs" "@np" ];
        };

        "Home Manager Options" = {
          urls = [{
            template = "https://home-manager-options.extranix.com/";
            params = [
              { name = "type"; value = "packages"; }
              { name = "query"; value = "{searchTerms}"; }
            ];
          }];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@hm" ];
        };

        "Youtube" = {
          urls = [{
            template = "https://www.youtube.com/results?search_query={searchTerms}";
          }];
          definedAliases = [ "@yt" ];
        };

        search.force = true;
      };
    };
  };
}
