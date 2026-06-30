{ pkgs, ... }:

{
  home.username = "caroccp";
  home.homeDirectory = "/home/caroccp";

  home.packages = with pkgs; [
    ripgrep
    fd
    eza
    bat
    fzf
    jq
    tree
    audacious
    libreoffice
  ];

  programs.git = {
    enable = true;
    userName = "Carolina Cuadra Pardo";
    userEmail = "74510425+cuadrapardo@users.noreply.github.com";
   };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "eza -la";
      gs = "git status";
      rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config";
      cleanup = "sudo nix-collect-garbage --delete-older-than 14d";
      cleanup-all = "sudo nix-collect-garbage -d";	
    };
  };
 
  programs.ssh = {
  enable = true;

  matchBlocks."github.com" = {
    hostname = "github.com";
    user = "git";
    identityFile = "~/.ssh/id_ed25519";
    identitiesOnly = true;
  };
};

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.stateVersion = "26.05";
}
