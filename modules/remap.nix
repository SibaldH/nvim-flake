{
  config.vim.maps = {
    normal = {
      "<leader>w" = {
        action = "<cmd>w<cr>";
        desc = "write file";
      };
      "<leader>q" = {
        action = "<cmd>q<cr>";
        desc = "quit nvim";
      };

      "J".action = "mzJ`z";
      "<C-d>".action = "<C-d>zz";
      "<C-u>".action = "<C-u>zz";
      "n".action = "nzzzv";
      "N".action = "Nzzzv";
      "{".action = "{zz";
      "}".action = "}zz";
      "Q".action = "<nop>";
      "<leader>no" = {
        action = "vim.cmd.noh";
        desc = "No highlight";
        lua = true;
      };
      "<leader>Y" = {
        action = "\"+Y";
        desc = "Yank line into + register";
      };
      "<leader>y" = {
        action = "\"+y";
        desc = "Yank into + register";
      };
      "<leader>d" = {
        action = "\"_d";
        desc = "delete to void register";
      };
      "[d" = {
        action = "<cmd>lua vim.diagnostic.goto_next()<cr>zz";
        desc = "Goto next diagnostic";
      };
      "]d" = {
        action = "<cmd>lua vim.diagnostic.goto_prev()<cr>zz";
        desc = "Goto previos diagnostic";
      };
      "[e" = {
        action = "<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })<cr>zz";
        desc = "Goto next diagnostic";
      };
      "]e" = {
        action = "<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })<cr>zz";
        desc = "Goto previos diagnostic";
      };
      "[w" = {
        action = "<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })<cr>zz";
        desc = "Goto next diagnostic";
      };
      "]w" = {
        action = "<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })<cr>zz";
        desc = "Goto previos diagnostic";
      };
      "<localleader>d" = {
        action = "<cmd>lua vim.diagnostic.open_float({ border = \"rounded\", })<cr>";
        desc = "Open the diagnostic under the cursor in a float window";
      };
      "<leader>ld" = {
        action = "vim.diagnostic.setqflist";
        desc = "Quickfix [L]ist [D]iagnostics";
        lua = true;
      };
      "<leader>cn" = {
        action = "<cmd>cnext<cr>zz";
        desc = "Navigate to next qflist item";
      };
      "<leader>cp" = {
        action = "<cmd>cprevious<cr>zz";
        desc = "Navigate to prev qflist item";
      };
      "<leader>co" = {
        action = "<cmd>copen<cr>zz";
        desc = "Open qflist";
      };
      "<leader>cc" = {
        action = "<cmd>cclose<cr>zz";
        desc = "Close qflist";
      };
      "U" = {
        action = "<C-r>";
        desc = "Redo";
      };
      "L" = {
        action = "$";
        desc = "Jump to end of line";
      };
      "H" = {
        action = "^";
        desc = "Jump to start of line";
      };
      "S" = {
        action = "<cmd>%s/\\<C-r><C-w>/\\<C-r><C-w>/gI<Left><Left><Left>";
        desc = "Quick find/replace for the word under the cursor";
      };
    };

    insert = {
      "<C-^>" = {
        action = "vim.cmd.stopinsert";
        desc = "leaves insert mode";
        lua = true;
      };
      # "<esc>".action = "<nop>";
    };

    visual = {
      "<M-j>".action = "<cmd>m '>+1<cr>gv=gv";
      "<M-K>".action = "<cmd>m '<-2<cr>gv=gv";
      "{".action = "{zz";
      "}".action = "}zz";
      "<leader>P" = {
        action = "\"_dP"; # escape string limits with backslach
        desc = "Paste without overwriting register 0";
      };
      "<leader>y" = {
        action = "\"+y";
        desc = "Yank into + register";
      };
      "<leader>d" = {
        action = "\"_d";
        desc = "delete to void register";
      };
      "<<".action = "<<gv";
      ">>".action = ">>gv";
    };
  };
}
