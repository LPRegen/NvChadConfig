local present, nvim_lastplace = pcall(require, "nvim-lastplace")

if not present then
  return
end

local options = {
  lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
  lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
  lastplace_open_folds = true,
}

nvim_lastplace.setup {
  options,
}
