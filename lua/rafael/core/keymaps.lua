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

-- bash scripts chmod +x
keymap.set("n", "<leader>x", ":!chmod +x %<CR>") -- make current file executable

-- tmux session management
keymap.set("n", "<c-f>", ":!tmux neww /Users/rafael/tmux-sessionizer<CR>", { silent = true })

-- undo-tree
keymap.set("n", "<leader>uu", ":UndotreeToggle<CR>")
keymap.set("n", "<leader>uf", ":UndotreeFocus<CR>")

-- rubocop command
keymap.set("n", "<leader>,l", ":!bundle exec rubocop --parallel<CR>")
