{ lib, buildInputs ? [], shellHook ? '' }:

with lib;

stdenv.mkDerivation {
  name = "my-project-env";
  buildInputs = [
    # List your project dependencies here
    # Example: (pkgs.gcc, pkgs.python)
  ] ++ buildInputs;

  shellHook = ''
    # Additional setup steps that should be performed when entering the Nix shell.
    echo "Welcome to my project Nix shell"
  '' + shellHook;
}
