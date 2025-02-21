{
  description = "Example Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
    let
      configuration = { pkgs, ... }: {
        environment.darwinConfig = "$HOME/box/nixdarwin/flake.nix";
        programs.zsh.enable = true;

        nix.package = pkgs.nix;
        nix.settings.experimental-features = "nix-command flakes";

        system.configurationRevision = self.rev or self.dirtyRev or null;
        system.stateVersion = 4;

        nixpkgs.hostPlatform = "aarch64-darwin";
      };
    in {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#dagger
      darwinConfigurations."M1" = nix-darwin.lib.darwinSystem {
        modules = [ configuration ./tooling.nix ./packages.nix ];
      };

      # Expose the package set, including overlays, for convenience.
      darwinPackages = self.darwinConfigurations."M1".pkgs;
    };
}
