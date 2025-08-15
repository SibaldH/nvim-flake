{
  vim.utility.undotree.enable = true;
  vim.maps.normal = {
    "<leader>u" = {
      action = "<cmd>UndotreeToggle<cr>";
      desc = "Toggle undotree";
    };
  };
}
