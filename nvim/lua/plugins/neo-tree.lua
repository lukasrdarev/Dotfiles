return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  config = function()
    require("neo-tree").setup({
      vim.keymap.set('n', '<leader>nn', ':Neotree toggle left<CR>', {}),
      vim.keymap.set('n', '<leader>nr', ':Neotree toggle right<CR>', {}),
      vim.keymap.set('n', '<leader>nr', ':Neotree toggle float<CR>', {}),
    })
  end,
}
