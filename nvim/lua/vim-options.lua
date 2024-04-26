-- Use relative numbering
vim.opt.relativenumber = true

-- Show current line number
vim.opt.number = true

--
vim.opt.tabstop = 2

--
vim.opt.shiftwidth = 2

--
vim.opt.expandtab = true

--
vim.opt.autoindent = true

-- Turn off word wrapping
vim.opt.wrap = false

-- Ignore case while searching
vim.opt.ignorecase = true

-- Do not ignore case if pattern includes mixed-casing
vim.opt.smartcase = true

--
vim.opt.cursorline = true

-- Use jj to exit insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {})

-- Map leader for Lazy (plugin manager)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
