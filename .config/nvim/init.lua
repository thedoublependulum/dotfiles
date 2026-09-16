require("config.lazy")

require('kanagawa').setup({
  transparent = true,
})

vim.cmd("colorscheme kanagawa")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


