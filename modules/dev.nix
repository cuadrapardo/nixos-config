{ pkgs, ... }:

{
  programs.direnv.enable = true;  
  environment.systemPackages = with pkgs; [
    gcc
    gnumake
    neovim
    jetbrains.clion
  ];
}
