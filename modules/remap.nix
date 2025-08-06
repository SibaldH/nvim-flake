{ config, lib, ... }: 
let 
        inherit (lib.nvim.binds) mkKeymap;
in {
  config.vim.luaConfigRC.remap = ''
    vim.keymap.set("i", "jj", vim.cmd.stopinsert, { noremap = true, silent = true, desc = "leaves insert mode" }) -- leaves insert mode
    vim.keymap.set("n", "<leader>w", ":w<Cr>", { noremap = true, silent = false, desc = "write file" }) -- write file
    vim.keymap.set("n", "<leader>q", ":q<Cr>", { noremap = true, silent = true, desc = "quit nvim" }) -- quit nvim
    vim.keymap.set("n", "<leader>z", ":wq<Cr>", { noremap = true, silent = false, desc = "write file and quit nvim" }) -- write file and quit nvim

    vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")

    vim.keymap.set("n", "J", "mzJ`z")
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set({ "n", "v" }, "{", "{zz")
    vim.keymap.set({ "n", "v" }, "}", "}zz")
    vim.keymap.set("n", "n", "nzzzv")
    vim.keymap.set("n", "N", "Nzzzv")

    -- preserve register 0 when pasing over something
    vim.keymap.set(
      "x",
      "<leader>p",
      '"_dP',
      { noremap = true, silent = true, desc = "Paste without overwriting register 0" }
    )

    -- yank into + register
    vim.keymap.set({ "v", "n" }, "<leader>y", '"+y', { noremap = true, silent = true, desc = "Yank into + register" })
    vim.keymap.set("n", "<leader>Y", '"+Y', { noremap = true, silent = true, desc = "Yank line into + register" })

    -- delete to void register
    vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { noremap = true, silent = true, desc = "Delete to void register" })

    vim.keymap.set("n", "Q", "<nop>")

    vim.keymap.set("n", "<leader>no", vim.cmd.noh, { noremap = true, silent = true, desc = "No highlight" })

    -- Goto next diagnostic of any severity
    vim.keymap.set("n", "[d", function()
      vim.diagnostic.goto_next({})
      vim.api.nvim_feedkeys("zz", "n", false)
    end, { desc = "Goto next diagnostic" })

    -- Goto previous diagnostic of any severity
    vim.keymap.set("n", "]d", function()
      vim.diagnostic.goto_prev({})
      vim.api.nvim_feedkeys("zz", "n", false)
    end, { desc = "Goto previous diagnostic" })

    -- Goto next error diagnostic
    vim.keymap.set("n", "[e", function()
      vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
      vim.api.nvim_feedkeys("zz", "n", false)
    end, { desc = "Goto next error diagnostic" })

    -- Goto previous error diagnostic
    vim.keymap.set("n", "]e", function()
      vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
      vim.api.nvim_feedkeys("zz", "n", false)
    end, { desc = "Goto previous error diagnostic" })

    -- Goto next warning diagnostic
    vim.keymap.set("n", "[w", function()
      vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })
      vim.api.nvim_feedkeys("zz", "n", false)
    end, { desc = "Goto next warning diagnostic" })

    -- Goto previous warning diagnostic
    vim.keymap.set("n", "]w", function()
      vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })
      vim.api.nvim_feedkeys("zz", "n", false)
    end, { desc = "Goto previous warning diagnostic" })

    -- Open the diagnostic under the cursor in a float window
    vim.keymap.set("n", "<localleader>d", function()
      vim.diagnostic.open_float({
        border = "rounded",
      })
    end, { desc = "Open the diagnostic under the cursor in a float window" })

    vim.keymap.set("n", "<leader>ld", vim.diagnostic.setqflist, { desc = "Quickfix [L]ist [D]iagnostics" }) -- Place all dignostics into a qflist
    vim.keymap.set("n", "<leader>cn", ":cnext<cr>zz", { desc = "Navigate to next qflist item" }) -- Navigate to next
    vim.keymap.set("n", "<leader>cp", ":cprevious<cr>zz", { desc = "Navigate to previos qflist item" }) -- Navigate to previos qflist item
    vim.keymap.set("n", "<leader>co", ":copen<cr>zz", { desc = "Open the qflist" }) -- Open the qflist
    vim.keymap.set("n", "<leader>cc", ":cclose<cr>zz", { desc = "Close the qflist" }) -- Close the qflist

    vim.keymap.set("n", "U", "<C-r>", { noremap = true, silent = true, desc = "Redo" }) -- Redo

    -- Press 'S' for quick find/replace for the word under the cursor
    vim.keymap.set("n", "S", function()
      local cmd = ":%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>"
      local keys = vim.api.nvim_replace_termcodes(cmd, true, false, true)
      vim.api.nvim_feedkeys(keys, "n", false)
    end, { desc = "Quick find/replace for the word under the cursor" })

    -- Press 'H', 'L' to jump to start/end of a line (first/last char)
    vim.keymap.set("n", "L", "$", { silent = true, desc = "Jump to end of line" })
    vim.keymap.set("n", "H", "^", { silent = true, desc = "Jump to start of line" })

    -- Reselect moved text
    vim.keymap.set("x", ">>", function()
      vim.cmd("normal! >>")
      vim.cmd("normal! gv")
    end)

    vim.keymap.set("x", "<<", function()
      vim.cmd("normal! <<")
      vim.cmd("normal! gv")
    end)
  '';
}
