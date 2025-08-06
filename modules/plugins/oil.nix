{
  vim.utility.oil-nvim = {
    enable = true;
		setupOpts = {
      vim.luaConfigRC.oil-setup = ''
        columns = {
          "icon",
          -- "permissions",
          -- "size",
          -- "mtime",
        },
        keymaps = {
          ["g?"] = { "actions.show_help", mode = "n" },
          ["<CR>"] = "actions.select",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = { "actions.close", mode = "n" },
          ["<C-l>"] = "actions.refresh",
          ["<BS>"] = { "actions.parent", mode = "n" },
          ["<A-BS>"] = { "actions.open_cwd", mode = "n" },
          ["g."] = { "actions.toggle_hidden", mode = "n" },
          ["gd"] = {
            desc = "Toggle file detail view",
            callback = function()
              detail = not detail
              if detail then
                require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
              else
                require("oil").set_columns({ "icon" })
              end
            end,
          },
        },
        use_default_keymaps = false,
        view_options = {
          show_hidden = true,
        },
      '';
    };
  };

  vim.luaConfigRC.oil-remap = ''
    vim.keymap.set("n", "<leader>pv", ":Oil --float --preview<CR>", { desc = "Open oil in a floating window" , silent = true })
  '';

}
