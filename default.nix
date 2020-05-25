{ reflex-platform ? import ./nix/reflex-platform.nix {} 
, withHoogle ? false
}:

reflex-platform.project ({ pkgs, ... }: {

  inherit withHoogle;
  useWarp = true;

  shellToolOverrides = self: super: {
  };

  overrides = self: super: {
  };

  packages = {
    common = ./common;
    frontend = ./frontend;
  };

  shells = {
    ghc = ["common" "frontend"];
    ghcjs = ["common" "frontend"];
  };

})
