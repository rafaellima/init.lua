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

-- neogit
keymap.set("n", "<leader>ns", ":Neogit<CR>") -- open neogit status

-- harpoon
keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>") -- open up harpoon UI
keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<CR>") -- add current file to harpoon marker 1
keymap.set("n", "<leader>hr", ":lua require('harpoon.mark').rm_file()<CR>") -- remove current file to harpoon marker 1
keymap.set("n", "<leader>hc", ":lua require('harpoon.mark').clear_all()<CR>") -- clear all harpoon markers
keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>") -- go to next harpoon marker
keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>") -- go to previous harpoon marker

-- bash scripts chmod +x
keymap.set("n", "<leader>x", ":!chmod +x %<CR>") -- make current file executable

-- tmux session management
keymap.set("n", "<c-f>", ":!tmux neww /Users/rafael/tmux-sessionizer<CR>", { silent = true })

-- undo-tree
keymap.set("n", "<leader>uu", ":UndotreeToggle<CR>")
keymap.set("n", "<leader>uf", ":UndotreeFocus<CR>")

-- rubocop command
keymap.set("n", "<leader>,l", ":!bundle exec rubocop --parallel<CR>")

-- rest-nvim
keymap.set("n", "<leader>rn", "<Plug>RestNvim<CR>")
keymap.set("n", "<leader>rp", "<Plug>RestNvimPreview<CR>")
keymap.set("n", "<leader>rl", "<Plug>RestNvimLast<CR>")
