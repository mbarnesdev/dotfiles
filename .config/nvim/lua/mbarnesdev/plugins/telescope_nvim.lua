return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require "telescope"
    local actions = require "telescope.actions"
    local builtin = require "telescope.builtin"

    telescope.setup {
      pickers = {
        find_files = {
          find_command = {
            "rg",
            "--no-ignore",
            "--hidden",
            "--files",
            "-g",
            "!**/node_modules/*",
            "-g",
            "!**/.git/*",
            "-g",
            "!**/vendor/*",
          },
        },
      },
      defaults = {
        file_ignore_patterns = {
          "^.git/",
          "^vendor/",
          "^node_modules/",
        },
        path_display = {
          "truncate ",
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
    }

    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "<leader>ps", builtin.grep_string, {})
    vim.keymap.set("n", "<leader>ph", builtin.help_tags, {})
    vim.keymap.set("n", "<leader>pk", builtin.keymaps, {})
    vim.keymap.set("n", "<leader>p.", function()
      builtin.find_files {
        cwd = vim.fn.stdpath "config",
      }
    end, {})
  end,
}
