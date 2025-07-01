{ pkgs, config, ... }: {
  vim.telescope = {
    enable = true;

    extensions = [
      {
        name = "manix";
        packages = [pkgs.vimPlugins.telescope-manix];
      }
    ];
  };
}
