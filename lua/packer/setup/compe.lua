local settings = {  noremap = true, silent = true, expr = true }

vim.api.nvim_set_keymap('i', '<C-Space>', "compe#complete()", settings)
-- vim.api.nvim_set_keymap('i', '<CR>',      "compe#confirm(lexima#expand('<LT>CR>', 'i'))", settings)
vim.api.nvim_set_keymap('i', '<CR>',      "compe#confirm('<CR>')", settings)
vim.api.nvim_set_keymap('i', '<C-e>',     "compe#close('<C-e>')", settings)
vim.api.nvim_set_keymap('i', '<C-f>',     "compe#scroll({ 'delta': +4 })", settings)
vim.api.nvim_set_keymap('i', '<C-d>',     "compe#scroll({ 'delta': -4 })", settings)

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", settings)
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", settings)
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", settings)
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", settings)
