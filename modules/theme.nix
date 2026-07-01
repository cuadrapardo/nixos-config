{ pkgs, ... }:

{
  stylix.enable = true;

  stylix.image = ./wallpapers/nausica_wallpaper.jpg;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

  stylix.fonts = {
    monospace = {
      package = pkgs.fira-mono;
      name = "Fira Mono";
    };
    sansSerif = {
      package = pkgs.fira;
      name = "Fira Sans Condensed";
    };
    serif = {
      package = pkgs.noto-fonts;
      name = "Noto Serif";
    };
  };

  stylix.opacity.terminal = 1.0;
}
