{ config, options, ... }: {
        config.vim.keymaps = [
                {
                        key = "<leader>pv";
                        mode = "n";
                        silent = true;
                        action = ":Ex<CR>";
                }
        ];
}
