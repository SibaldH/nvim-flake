{
        config.vim.lsp.enable = true;
        config.vim.languages = {
                enableFormat = true;
                enableTreesitter = true;
                enableDAP = true;
                enableExtraDiagnostics = true;
                
                nix.enable = true;
                lua.enable = true;
                rust.enable = true;
                typst.enable = true;
        };
}
