{config, ... }: {
  config.vim = {
    options = {
      nu = true;
      rnu = true;

      guicursor = "n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175";

      showmode = false;

      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      
      smartindent = true;

      breakindent = true;

      swapfile = false;
      backup = false;
      undofile = true;

      incsearch = true;
      hlsearch = true;

      wrap = false;

      splitbelow = true;
      splitright = true;

      ignorecase = true;
      smartcase = true;

      updatetime = 250;

      termguicolors = true;

      cursorline = true;

      foldmethod = "expr";
      foldexpr = "v:lua.vim.treesitter.foldexpr()";
      foldenable = true;
      foldlevel = 99;
      foldminlines = 3;

      scrolloff = 8;
      signcolumn = "yes";

      colorcolumn = "80";
    };

    globals = {
      mapleader = " ";
      maplocalleader = ",";

      rustfmt_autosave = 1;
    };
    luaConfigRC.set = ''
          vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
          vim.opt.completeopt = { "menuone", "noselect" }
    '';
  };
}
