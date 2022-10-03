local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'sw', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

keymap.set('','s<left>','<C-w>h')
keymap.set('','s<right>','<C-w>l')
keymap.set('','s<up>','<C-w>k')
keymap.set('','s<down>','<C-w>j')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

--map <M-s> :w<kEnter>  "Works in normal mode, must press Esc first"
--:imap <M-s> <Esc>:w<kEnter>i "Works in insert mode, saves and puts back in insert mode"
--keymap.set('','<M-s>','w<kEnter>')
--keymap.set('','<M-s>','<Esc>:w<kEnter>i')
keymap.set('n','<cmd>s',':w')


