return {
  'saghen/blink.cmp',
  lazy = false, -- lazy loading handled internally
  dependencies = 'rafamadriz/friendly-snippets',
  version = 'v0.*',

  opts = {
    keymap = { preset = 'default' },
    completion = {
      menu = {
        draw = {
          columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } }
        }
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
        treesitter_highlighting = false,
      }
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    signature = { enabled = true }
  },
  opts_extend = { "sources.default" }
}
