-- Settings
vim.g.mapleader = " "
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.incsearch = true

-- Shortcuts
vim.keymap.set('v', '<C-c>', '"+y', { noremap = true })
vim.keymap.set('n', '<leader>n' , ":Ex<CR>")
vim.keymap.set('n', 'S', ':%s/', { noremap = true })
vim.keymap.set('v', 'S', ':s/', { noremap = true })

-- Terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_create_user_command('T', function()
    vim.cmd('split')
    vim.cmd('resize 15')
    vim.cmd('terminal')
end, {})

-- Splits
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { noremap = true })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { noremap = true })
vim.keymap.set('n', '<leader>h', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>j', ':resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>k', ':resize +5<CR>', { noremap = true, silent = true })
