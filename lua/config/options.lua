-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set tab width to 2 spaces (standard for React/TypeScript projects)
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable relative line numbers for easier code navigation
vim.opt.relativenumber = true

-- Increase scrolloff to provide more context when scrolling
vim.opt.scrolloff = 8

-- Enable clipboard integration for easier copy/paste
vim.opt.clipboard = "unnamedplus"

-- Enable word wrapping for markdown and text files only
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text" },
  callback = function()
    vim.opt_local.wrap = true
  end,
})

-- Highlight matching brackets/tags
vim.opt.showmatch = true

-- Enable mouse support for all modes
vim.opt.mouse = "a"

-- Faster update time for better LSP experience (default is 4000ms)
vim.opt.updatetime = 300

-- Show sign column for git signs and LSP diagnostics
vim.opt.signcolumn = "yes"

-- Search settings: incremental, case-smart, highlight
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
