{
  description = "My custom neovim config with nvf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nvf, ... }: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    # Import all .nix files form th emodules directory
    modules = map (file: import (./. + "modules/${file}"))
        (builtins.attrNames (builtins.readDir ./modules));
  in {
    packages.${system}.default = (nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = modules;
    }).neovim;

    homeManagerModules.default = { pkgs, ... }: {
      home.packages = [ self.packages.${system}.default ];
    };
  };
}
