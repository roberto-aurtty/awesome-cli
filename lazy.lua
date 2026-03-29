local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- LazyVim base
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- 🔥 transparência + tema
    {
      "folke/tokyonight.nvim",
      opts = {
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      },
    },

    -- plugin de transparência (opcional, mas recomendado)
    {
      "xiyaowong/transparent.nvim",
      lazy = false,
      config = function()
        require("transparent").setup({
          extra_groups = {
            "NormalFloat",
            "NvimTreeNormal",
            "NeoTreeNormal",
            "TelescopeNormal",
          },
        })
        vim.cmd("TransparentEnable")
      end,
    },

    -- seus plugins
    { import = "plugins" },
  },

  defaults = {
    lazy = false,
    version = false,
  },

  install = { colorscheme = { "tokyonight", "habamax" } },

  checker = {
    enabled = true,
    notify = false,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- 🔥 fallback manual (garante transparência mesmo sem plugin)
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE
  highlight EndOfBuffer guibg=NONE
]])
