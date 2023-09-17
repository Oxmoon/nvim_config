vim.keymap.set("n", "<Leader>dn", function() require('dap-python').test_method() end)
vim.keymap.set("n", "<Leader>df", function() require('dap-python').test_class() end)
vim.keymap.set("n", "<Leader>ds <ESC>", function() require('dap-python').debug_selection() end)

require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
