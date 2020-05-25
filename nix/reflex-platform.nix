{ bootstrap ? import <nixpkgs> {} }:
let
  reflex-platform = bootstrap.fetchFromGitHub {
    owner = "reflex-frp";
    repo  = "reflex-platform";
    rev = "c21ec7036c8351185cd2feef9ce577b6a61c4f22";
    sha256 = "0m4sdpz6qvngralpyprrbvsyi2zmfh2l3q5vhihwfp3842blvbfg";
  };
in 
  import reflex-platform {}
