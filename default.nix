{ reflex-platform ? import ./nix/reflex-platform.nix {} }:

reflex-platform.project ({ pkgs, ... }: {
  packages = {
    common = ./common;
    frontend = ./frontend;
  };

  shells = {
    ghc = ["common" "frontend"];
    ghcjs = ["common" "frontend"];
  };
})
