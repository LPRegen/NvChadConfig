local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt

-- Custom options.
opt.relativenumber = true
opt.wrap = true
opt.linebreak = true

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
