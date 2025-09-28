{
  config.vim.keymaps = [
    # Normal mode mappings
    {
      key = "<leader>w";
      mode = "n";
      action = "<cmd>w<cr>";
      desc = "write file";
    }
    {
      key = "<leader>q";
      mode = "n";
      action = "<cmd>q<cr>";
      desc = "quit nvim";
    }
    {
      key = "J";
      mode = "n";
      action = "mzJ`z";
    }
    {
      key = "<C-d>";
      mode = "n";
      action = "<C-d>zz";
    }
    {
      key = "<C-u>";
      mode = "n";
      action = "<C-u>zz";
    }
    {
      key = "n";
      mode = "n";
      action = "nzzzv";
    }
    {
      key = "N";
      mode = "n";
      action = "Nzzzv";
    }
    {
      key = "{";
      mode = ["n" "x"];
      action = "{zz";
    }
    {
      key = "}";
      mode = ["n" "x"];
      action = "}zz";
    }
    {
      key = "Q";
      mode = "n";
      action = "<nop>";
    }
    {
      key = "<leader>no";
      mode = "n";
      action = "vim.cmd.noh";
      desc = "No highlight";
      lua = true;
    }
    {
      key = "<leader>Y";
      mode = "n";
      action = "\"+Y";
      desc = "Yank line into + register";
    }
    {
      key = "<leader>y";
      mode = ["n" "x"];
      action = "\"+y";
      desc = "Yank into + register";
    }
    {
      key = "<leader>d";
      mode = ["n" "x"];
      action = "\"_d";
      desc = "delete to void register";
    }
    {
      key = "[d";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>zz";
      desc = "Goto next diagnostic";
    }
    {
      key = "]d";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>zz";
      desc = "Goto previos diagnostic";
    }
    {
      key = "[e";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })<cr>zz";
      desc = "Goto next diagnostic";
    }
    {
      key = "]e";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })<cr>zz";
      desc = "Goto previos diagnostic";
    }
    {
      key = "[w";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })<cr>zz";
      desc = "Goto next diagnostic";
    }
    {
      key = "]w";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })<cr>zz";
      desc = "Goto previos diagnostic";
    }
    {
      key = "<localleader>d";
      mode = "n";
      action = "<cmd>lua vim.diagnostic.open_float({ border = \"rounded\", })<cr>";
      desc = "Open the diagnostic under the cursor in a float window";
    }
    {
      key = "<leader>ld";
      mode = "n";
      action = "vim.diagnostic.setqflist";
      desc = "Quickfix [L]ist [D]iagnostics";
      lua = true;
    }
    {
      key = "<leader>cn";
      mode = "n";
      action = "<cmd>cnext<cr>zz";
      desc = "Navigate to next qflist item";
    }
    {
      key = "<leader>cp";
      mode = "n";
      action = "<cmd>cprevious<cr>zz";
      desc = "Navigate to prev qflist item";
    }
    {
      key = "<leader>co";
      mode = "n";
      action = "<cmd>copen<cr>zz";
      desc = "Open qflist";
    }
    {
      key = "<leader>cc";
      mode = "n";
      action = "<cmd>cclose<cr>zz";
      desc = "Close qflist";
    }
    {
      key = "U";
      mode = "n";
      action = "<C-r>";
      desc = "Redo";
    }
    {
      key = "L";
      mode = "n";
      action = "$";
      desc = "Jump to end of line";
    }
    {
      key = "H";
      mode = "n";
      action = "^";
      desc = "Jump to start of line";
    }
    {
      key = "S";
      mode = "n";
      action = "<cmd>%s/\\<C-r><C-w>/\\<C-r><C-w>/gI<Left><Left><Left>";
      desc = "Quick find/replace for the word under the cursor";
    }

    # Insert mode mappings
    {
      key = "<C-^>";
      mode = "i";
      action = "vim.cmd.stopinsert";
      desc = "leaves insert mode";
      lua = true;
    }
    {
      key = "<esc>";
      mode = "i";
      action = "<nop>";
    }

    # Visual mode mappings
    {
      key = "<M-j>";
      mode = "x";
      action = "<cmd>m '>+1<cr>gv=gv";
    }
    {
      key = "<M-K>";
      mode = "x";
      action = "<cmd>m '<-2<cr>gv=gv";
    }
    {
      key = "<leader>P";
      mode = "x";
      action = "\"_dP";
      desc = "Paste without overwriting register 0";
    }
    {
      key = "<<";
      mode = "x";
      action = "<<gv";
    }
    {
      key = ">>";
      mode = "x";
      action = ">>gv";
    }
  ];
}
