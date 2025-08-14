{lib, ...}:{
  vim.utility.oil-nvim = {
    enable = true;
		setupOpts = {
      columns = [ "icon" ];
      keymaps = {
        "g?" = { "@1" = "actions.show_help"; mode = "n"; };
        "<CR>" = "actions.select";
        "<C-p>" = "actions.preview";
        "<C-c>" = { "@1" = "actions.close"; mode = "n"; };
        "<C-l>" = "actions.refresh";
        "<BS>" = { "@1" = "actions.parent"; mode = "n"; };
        "<A-BS>" = { "@1" = "actions.open_cwd"; mode = "n"; };
        "g." = { "@1" = "actions.toggle_hidden"; mode = "n"; };
        "gd" = {
          desc = "Toggle file detail view";
            callback = lib.generators.mkLuaInline ''
              function()
                detail = not detail
                if detail then
                  require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
                else
                  require("oil").set_columns({ "icon" })
                end
              end
            '';
        };
      };
      use_default_keymaps = false;
      view_options = {
        show_hidden = true;
      };
    };
  };

  vim.maps.normal = {
    "<leader>pv" = {
      action = "<cmd>Oil --float --preview<cr>";
      desc = "Open oil in a floating window";
    };
  };
}
