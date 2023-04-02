-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- use capitals J K to move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- mwke split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>") -- collapse file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- keymap.set("n", "<leader>bp", ":bprevious<CR>") -- go to previous buffer
-- keymap.set("n", "<leader>bn", ":bnext<CR>") -- go to next buffer

-- harpoon
keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>") -- open up harpoon UI
keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<CR>") -- add current file to harpoon marker 1
keymap.set("n", "<leader>hr", ":lua require('harpoon.mark').rm_file()<CR>") -- remove current file to harpoon marker 1
keymap.set("n", "<leader>hc", ":lua require('harpoon.mark').clear_all()<CR>") -- clear all harpoon markers
keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>") -- go to next harpoon marker
keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>") -- go to previous harpoon marker

-- vim-rspec
keymap.set("n", "<leader>tt", "<cmd>RunCurrentSpecFile()<CR>") -- run rspec tests for current file
keymap.set("n", "<leader>ts", "<cmd>RunNearestSpec()<CR>") -- run nearest rspec test

-- bash scripts chmod +x
keymap.set("n", "<leader>x", ":!chmod +x %<CR>") -- make current file executable

-- tmux session management
keymap.set("n", "<c-f>", ":!tmux neww /Users/rafael/tmux-sessionizer<CR>", { silent = true })

-- undo-tree
keymap.set("n", "<leader>uu", ":UndotreeToggle<CR>")
keymap.set("n", "<leader>uf", ":UndotreeFocus<CR>")

-- git fugitive
keymap.set("n", "<leader>ms", ":G<CR>") -- git status
