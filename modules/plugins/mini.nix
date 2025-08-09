{ lib, ... }:{
  vim.mini = {
    surround = {
      enable = true;
      setupOpts = {
        mappings = {
          add = "sa";
          delete = "sd";
          find = "sf";
          find_left = "sF";
          highlight = "sh";
          replace = "sr";
          update_n_lines = "sn";
        };
        search_method = "cover_or_next";
      };
    };

    pairs.enable = true;

    clue = {
      enable = true;
      setupOpts = {
        triggers = [
          # Leader triggers
          { mode = "n"; keys = "<leader>"; }
          { mode = "x"; keys = "<leader>"; }

          # Built-in completion
					{ mode = "i"; keys = "<C-x>"; }

					# `g` key
					{ mode = "n"; keys = "g"; }
					{ mode = "x"; keys = "g"; }

					# Marks
					{ mode = "n"; keys = "'"; }
					{ mode = "n"; keys = "`"; }
					{ mode = "x"; keys = "'"; }
					{ mode = "x"; keys = "`"; }

					# Registers
					{ mode = "n"; keys = "\""; }
					{ mode = "x"; keys = "\""; }
					{ mode = "i"; keys = "<C-r>"; }
					{ mode = "c"; keys = "<C-r>"; }

					# Window commands
					{ mode = "n"; keys = "<C-w>"; }

					# `z` key
					{ mode = "n"; keys = "z"; }
					{ mode = "x"; keys = "z"; }

        ];
      };
    };

    comment = {
      enable = true;
      setupOpts = {
        mappings = {
          comment = "gc";
          comment_line = "gcc";
        };
      };
    };

    statusline = {
      enable = true;
      setupOpts = {
        use_icons = true;
        content = {
          active = lib.generators.mkLuaInline ''
          function()
          	local _, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
						-- local mode = utils.section_mode()
						local git = MiniStatusline.section_git({ trunc_width = 75 })
						local diff = MiniStatusline.section_diff({ trunc_width = 74 })
						local diagnostics = MiniStatusline.section_diagnostics({ trunc_width = 75 })
						local filename = MiniStatusline.section_filename({ trunc_width = 140 })
						local fileinfo = MiniStatusline.section_fileinfo({ trunc_width = 120 })
						-- local location = utils.section_location()
						-- local harpoon = utils.section_harpoon()
						-- local windsurf = utils.section_windsurf()

						return MiniStatusline.combine_groups({
							{ hl = "MiniStatuslineDevinfo", strings = { git, diff, diagnostics } },
							"%<", -- Mark general truncate point
							{ hl = "MiniStatuslineFilename", strings = { filename } },
							"%=", -- End left alignment
							{ hl = "MiniStatuslineFileinfo", strings = { fileinfo } },
						})
          end'';
        };
      };
    };

    git.enable = true;
    diff.enable = true;

    cursorword = {
      enable = true;
      setupOpts = {
        delay = 100;
      };
    };

    hipatterns = {
      enable = true;
      setupOpts = {
        highlighters = {
          hex_color = lib.generators.mkLuaInline '' require("mini.hipatterns").gen_highlighter.hex_color() '';
          todo = { pattern = "%f[%w]()TODO%f[%W]"; group = "MiniHipatternsTodo"; };
        };
      };
    };

    icons = {
      enable = true;
      setupOpts = {
        style = "glyph";
      };
    };

    indentscope = {
      enable = true;
      setupOpts = {
        symbol = "|";
        options.try_as_border = true;
      };
    };
  };
}
