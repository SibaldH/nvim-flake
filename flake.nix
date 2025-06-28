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
  in {
    packages.${system}.default = (nvf.lib.neovimConfiguration {
      inherit pkgs;
      modules = [
        {
          config.vim = {
            theme = {
              enable = true;
              name = "tokyonight";
              style = "night";
            };
            statusline.lualine.enable = true;
            telescope.enable = true;
            autocomplete.nvim-cmp.enable = true;

            lsp.enable = true;
            languages = {
              enableTreesitter = true;

              nix.enable = true;
              rust.enable = true;
            };
          };
        }
      ];
    }).neovim;
  };
}
