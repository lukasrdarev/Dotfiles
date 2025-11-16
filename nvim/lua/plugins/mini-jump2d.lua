return {
  {
    "nvim-mini/mini.jump2d",
    version = '*',
    config = function()
      require("mini.jump2d").setup({
        mappings = {
          start_jumping = "S",
        },
      })
    end,
  },
}
