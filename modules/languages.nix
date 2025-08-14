{
        config.vim.lsp.enable = true;
        config.vim.languages = {
                enableTreesitter = true;
                enableDAP = true;
                
                nix.enable = true;
                lua.enable = true;
                rust.enable = true;
        };
}
