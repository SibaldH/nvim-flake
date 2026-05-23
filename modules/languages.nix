{ lib, ... }: {
  config.vim.lsp.enable = true;
  config.vim.languages = {
    enableFormat = true;
    enableTreesitter = true;
    enableDAP = true;
    enableExtraDiagnostics = true;
    
    nix.enable = true;
    lua.enable = true;
    typst.enable = true;
    qml.enable = true;
    rust = {
      enable = true;
      extensions.crates-nvim.enable = true;
      lsp.opts = ''
        ['rust-analyzer'] = {
          cargo = {allFeature = true},
          checkOnSave = true,
          procMacro = {
            enable = true,
          },
        },
      '';
    };

    astro.enable = true;
    html.enable = true;
    css.enable = true;
    ts.enable = true;
  };
}
