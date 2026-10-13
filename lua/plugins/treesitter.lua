return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  version = false, -- last release is way too old and doesn't work on Windows
  build = nil,     -- Completely disable build/update step since Nix handles binaries
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      init = function()
        -- disable rtp plugin, as we only need its queries for mini.ai
        require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
        load_textobjects = true
      end,
    },
  },
  cmd = {},        -- Disable download commands since everything is local
  keys = {
    { "<c-space>", desc = "Increment selection" },
    { "<bs>", desc = "Decrement selection", mode = "x" },
  },
  -- Use a clean function to override opts so LazyVim doesn't append its 27 languages
  opts = function()
    return {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {}, -- Forces an empty list, overriding LazyVim's defaults
      auto_install = false,  -- Prevents downloading missing parsers on the fly
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    }
  end,
}

