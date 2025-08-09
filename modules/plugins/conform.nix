{
  vim.formatter.conform-nvim = {
    enable = true;
    setupOpts = {
      default_format_opts = {lsp_format = "fallback";};
      formatter_by_ft = {
        lua = [ "stylua" ];
        rust = [ "rustfmt" ];
      };
    };
  };
}
