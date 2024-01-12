local function toggle_file_dir()
  local api = require "nvim-tree.api"
  local current_file = vim.fn.expand('%:p:h')
  api.tree.toggle({ path = current_file })
end

vim.keymap.set('n', '<leader>t', toggle_file_dir, { desc = "Toggle file tree (file dir)"})

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
    }
  end,
}
