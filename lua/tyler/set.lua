--vim.cmd.colorscheme("tokyonight")
 
vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank
 
vim.opt.nu = true                 -- set line numbers -- set line numbers
vim.opt.relativenumber = true     -- use relative line numbers
 
-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Other 
vim.opt.swapfile = false          -- don't use swapfile

vim.opt.showmatch = ture          -- show matching bracket when hover  
vim.opt.mat = 2 	          -- for .2 sec 
vim.opt.ignorecase = true		  -- ignorecase on search  
vim.opt.hlsearch = true             -- highlight all matches 
vim.opt.incsearch = true -- incremental search

vim.opt.scrolloff = 7		          -- keep 7 lines above and below
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.opt.updatetime = 100
