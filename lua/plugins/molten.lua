return {
  {
    "benlubas/molten-nvim",
    dependencies = {
      "willothy/wezterm.nvim",
    },
    build = ":UpdateRemotePlugins",
    init = function()
      -- these are examples, not defaults. Please see the readme
      vim.g.molten_image_provider = "wezterm"
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_auto_open_output = false
      vim.g.molten_wrap_output = true
      vim.g.molten_virt_text_output = true
    end,
  },
}
