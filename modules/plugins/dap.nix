{ lib, ...}: {
  vim.debugger.nvim-dap = {
    enable = true;
    ui = {
      enable = true;
      autoStart = false;
    };

    mappings = {
      continue = "<leader>dc";
      goDown = "<leader>dvi";
      goUp = "<leader>dvo";
      hover = "<leader>dh";
      restart = "<leader>dR";
      runLast = "<leader>d.";
      runToCursor = "<leader>dgc";
      stepBack = "<leader>dgk";
      stepInto = "<leader>dgi";
      stepOut = "<leader>dgo";
      stepOver = "<leader>dgj";
      terminate = "<leader>dq";
      toggleBreakpoint = "<leader>db";
      toggleDapUI = "<leader>du";
      toggleRepl = "<leader>dr";
    };
  };
}
