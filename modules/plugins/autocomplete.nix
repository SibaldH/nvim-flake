{
    vim = {
      autocomplete.nvim-cmp = {
        enable = true;

        sources = {
          "nvim_lsp" = "[LSP]";
          "path" = "[Path]";
          "buffer" = "[Buffer]";
          "luasnip" = "[Snippets]";
        };
      };

      maps.insert = {
        "<A-e>".action = "<cmd>lua require'cmp'.complete()<CR>";  # Trigger completion
        "<A-j>".action = "<cmd>lua require'cmp'.select_next_item()<CR>";  # Navigate to the next item
        "<A-k>".action = "<cmd>lua require'cmp'.select_prev_item()<CR>";  # Navigate to the previous item
        "<A-c>".action = "<cmd>lua require'cmp'.close()<CR>";  # Close the completion menu
        "<A-CR>".action = "<cmd>lua require'cmp'.confirm('<CR>')<CR>";  # Confirm the selected completion
      };
    };
}
