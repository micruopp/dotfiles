-- Italic support for terminal.app
-- NOTE: These break with .opt, not sure why.
-- However, it still formats italic. Perhaps, I'm just not giving
-- opt enough arguments.
vim.o.t_ZH = "\\e[3m"
vim.o.t_ZR = "\\e[23m"

-- Terminal colors
--vim.o.t_Co = 256
-- src: https://stackoverflow.com/questions/62702766/termguicolors-in-vim-makes-everything-black-and-white
vim.o.t_8f = "\\<Esc>[38;2;%lu;%lu;%lum"
vim.o.t_8b = "\\<Esc>[48;2;%lu;%lu;%lum"
vim.opt.termguicolors = true

vim.cmd([[hi StatusLine ctermbg=159 ctermfg=69]])

-- ThePrimeagen: https://www.youtube.com/watch?v=w7i4amO_zaE
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- some swap and backup stuff
-- i need to install the plugin first
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
