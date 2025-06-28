{ config, ... }: {
        config.vim.lsp.enable = true;
        config.vim.languages = {
                enableTreesitter = true;
                
                nix.enable = true;
                lua.enable = true;
                rust.enable = true;
        };
}
