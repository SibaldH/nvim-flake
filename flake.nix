{
  description = "My custom neovim config with nvf";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nvf, ... }: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    selectedModules = [
                (import ./modules)
    ];
  in {
    packages.${system}.default = (nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = selectedModules;
    }).neovim;

    homeManagerModules.default = { pkgs, ... }: {
      home.packages = [ self.packages.${system}.default ];
    };
  };
}
