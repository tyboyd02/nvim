vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Neotree focus" })
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', { desc = "Neotree toggle" })

-- telescope_mappings
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files" })
vim.keymap.set("n", "<leader>fl", builtin.live_grep, { desc = "Live grep" })

-- Use move command while highlighted to move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- non_lsp_mappings
vim.keymap.set("n", "J", "mzJ`z")       -- Keep cursor in same position on line join
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Keep cursor in middle on half page jump down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Keep cursor in middle on half page jump down
vim.keymap.set("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)")
--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- git vim-fugitive 
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
vim.keymap.set("n", "<leader>gd", vim.cmd.Gdiffsplit, { desc = "Git diff (split)" })
vim.keymap.set("n", "<leader>gb", function() vim.cmd("Git blame") end, { desc = "Git blame" })
vim.keymap.set("n", "<leader>gl", function() vim.cmd("0Gclog") end, { desc = "Git log (file)" })
vim.keymap.set("n", "<leader>gp", function() vim.cmd("Git push") end, { desc = "Git push" })
vim.keymap.set("n", "<leader>gP", function() vim.cmd("Git pull") end, { desc = "Git pull" })
vim.keymap.set("n", "<leader>gc", function() vim.cmd("Git commit") end, { desc = "Git commit" })
vim.keymap.set("n", "<leader>ga", function() vim.cmd("Git add %") end, { desc = "Git add current file" })

