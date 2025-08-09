{
  vim.formatter.conform-nvim = {
    enable = true;
    setupOpts = {
      default_format_opts = "fallback";
      formatter_by_ft = {
        lua = [ "stylua" ];
        rust = [ "rustfmt" ];
      };
    };
  };
}
