vim.cmd("set clipboard+=unnamedplus")

vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- File operations 
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Set background color
vim.opt.background = "dark" -- Use 'light' if you want a light background

-- Define custom highlight groups
vim.api.nvim_set_hl(0, "Normal", { bg = "#101216", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#f5e0dc", fg = "#101216" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#3b5070", fg = "#cdd6f4" })

-- Additional UI elements
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#101216" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#101216" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#3b5070", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#3b5070" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#3b5070", italic = true })


vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.backspace = {"start", "eol", "indent"}
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.laststatus = 0
vim.opt.colorcolumn = "120"

-- prevent copying on deletion
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('v', 'd', '"_d')

