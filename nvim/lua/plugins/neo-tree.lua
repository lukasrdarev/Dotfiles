return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window
  },
  lazy = false,
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {},
  config = function(_, opts)
    require("neo-tree").setup(opts)
    vim.keymap.set('n', '<leader>nn', ':Neotree toggle left<CR>', {})
    vim.keymap.set('n', '<leader>nr', ':Neotree toggle right<CR>', {})
    vim.keymap.set('n', '<leader>nf', ':Neotree toggle float<CR>', {})
  end,
}
