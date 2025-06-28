vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "Neotree focus" })
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', { desc = "Neotree toggle" })

-- telescope_mappings
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.expand("~"),
    hidden = true,
    file_ignore_patterns = { "%.get/", "node_modules/", "%.local/", "%.cache/"}
  })
end, { desc = "Find files from home" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Commands" })

vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git files" })
vim.keymap.set("n", "<leader>fl", builtin.live_grep, { desc = "Live grep" })

-- Use move command while highlighted to move text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- non_lsp_mappings
vim.keymap.set("n", "J", "mzJ`z", { desc = "Keep cursor in middle on line join" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in middle on half page jump down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in middle on half page jump up" })
vim.keymap.set("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)", { desc = "Comment toggle lines" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Keep cursor in middle on search next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep cursor in middle on search previous" })
vim.keymap.set("x", "p", "\"_dP", { desc = "Paste without overwriting clipboard" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Q" })

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { desc = "Replace word under cursor" }) 

-- Start of page and end of pate 
vim.keymap.set("n", "G", "G$", { desc = "Go to end of page" })
vim.keymap.set("n", "gg", "gg0", { desc = "Go to start of page" })
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select all" })

-- Stay in visual mode after indenting
vim.keymap.set("v", ">", ">gv", { desc = "Indent and reselect" })
vim.keymap.set("v", "<", "<gv", { desc = "Outdent and reselect" })

-- git vim-fugitive 
vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
vim.keymap.set("n", "<leader>gd", vim.cmd.Gdiffsplit, { desc = "Git diff (split)" })
vim.keymap.set("n", "<leader>gb", function() vim.cmd("Git blame") end, { desc = "Git blame" })
vim.keymap.set("n", "<leader>gl", function() vim.cmd("0Gclog") end, { desc = "Git log (file)" })
vim.keymap.set("n", "<leader>gp", function() vim.cmd("Git push") end, { desc = "Git push" })
vim.keymap.set("n", "<leader>gP", function() vim.cmd("Git pull") end, { desc = "Git pull" })
vim.keymap.set("n", "<leader>gc", function() vim.cmd("Git commit") end, { desc = "Git commit" })
vim.keymap.set("n", "<leader>ga", function() vim.cmd("Git add %") end, { desc = "Git add current file" })

-- Buffers
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bl", ":buffers<CR>", { desc = "List buffers" })

-- SnipRun
vim.keymap.set("n", "<leader>r", "<cmd>SnipRun<CR>", { desc = "Run current line with SnipRun" })
vim.keymap.set("v", "<leader>r", ":SnipRun<CR>", { desc = "Run selected region with SnipRun" })
vim.keymap.set("n", "<leader>rf", "<cmd>%SnipRun<CR>", { desc = "Run entire file with SnipRun" })
