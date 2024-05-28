return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require "oil"

    oil.setup {
      default_file_explorer = true,
      columns = {
        "icon",
      },
      use_default_keymaps = false,
      keymaps = {
        ["<CR>"] = "actions.select",
        ["-"] = "actions.parent",
      },
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
    }

    vim.keymap.set("n", "<leader>pv", "<cmd>Oil<CR>")
  end,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup {
        override_by_filename = {
          ["astro"] = {
            icon = "🚀",
          },
        },
      }
    end,
  },
  opts = {},
}
