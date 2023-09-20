-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[

    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    ":vnoremap <silent> im :!perlimports --read-stdin --filename '%:p'<CR>
    au FileType sql setl formatprg=/usr/local/bin/pg_format\ -
    "au BufWritePre * :StripTrailingWhitespace<CR>
    nmap <C-h> :bprevious<CR>
    nmap <C-l> :bnext<CR>

    au Filetype perl nmap = :PerlTidy<CR>
    au Filetype perl vmap = :PerlTidy<CR>
]])

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_exec('silent! normal! g`"zv', false)
  end,
})

vim.keymap.set("v", "im", "!perlimports --read-stdin --filename '%:p'<CR>", { silent = true, noremap = true })
