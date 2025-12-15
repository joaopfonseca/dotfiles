return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    event = "BufRead",
    config = function()
      require("neoscroll").setup({
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>" },
        duration_multiplier = 0.6,
        hide_cursor = true,
        stop_eof = true,
        respect_scrolloff = true,
        cursor_scrolls_alone = true,
      })
    end,
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      -- Start Copilot automatically when entering insert mode
      if not Copilot_loaded then
        Copilot_loaded = true
        vim.cmd("Copilot")
      end

      vim.g.copilot_no_tab_map = true  -- disable default Tab mapping

      -- vim.api.nvim_set_keymap("i", "<A-l>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
      vim.keymap.set('i', '<A-l>', 'copilot#Accept("\\<S-Tab>")', { expr = true, replace_keycodes = false })
      vim.keymap.set('i', '<A-j>', 'copilot#Next()', { expr = true, silent = true })
      vim.keymap.set('i', '<A-k>', 'copilot#Previous()', { expr = true, silent = true })
    end,
  },
}

