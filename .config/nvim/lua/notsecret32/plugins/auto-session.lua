return {
  "rmagatti/auto-session",
  lazy = false,
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enable = false,
      auto_session_suppress_dirs = {
        "~/",
        "~/Downloads",
        "~/Documents",
        "~/Desktop/"
      }
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>", { desc = "Restore session" })
    keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>", { desc = "Save session" })
  end,
}
