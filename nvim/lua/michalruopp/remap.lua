-- (mode, binding, command)
-- Prime uses "pv" as "Project - View"
-- "pf" is "Project - File"
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- ThePrimeagen: https://www.youtube.com/watch?v=w7i4amO_zaE

-- moves the current selection, and applies indentation if needed
-- a lil buggy near the end of a file
-- "E16: Invalid range" error
-- and "K" doesn't always work
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- moves the line below to the current line, and adds a space
--vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor centered when paging
vim.keymap.set("n", "<C-d>", "C-d>zz")
vim.keymap.set("n", "<C-u>", "C-u>zz")

-- keep cursor centered when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- pastes while preserving buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- asbjornHaland
-- yank with the "plus register" aka the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- deleting to void register
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- don't ever press capital "Q"... idk
--vim.keymap.set("n", "Q", "<nop>")

-- tmux shortcut
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- "quick fix" navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace the word cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", [[:so]])
