local H = {}
function H.autocmd(event, triggers, operations)
	local cmd = string.format("autocmd %s %s %s", event, triggers, operations)
	vim.cmd(cmd)
end

H.autocmd("BufEnter", "*", "if &buftype == 'terminal' | :startinsert | endif")
H.autocmd("BufReadPost", "*", [[if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif]])
-- H.autocmd("BufWritePre",  "*",   "%s/\\s\\+$//e")

H.autocmd("ColorScheme", "*", "lua require('thenameiswiiwin.colors').setItalics()")
H.autocmd("CompleteDone", "*", "pclose")

H.autocmd("FileType", "vue", "syntax sync fromstart")

-- H.autocmd("InsertEnter",  "*",   "let save_cwd = getcwd() | set autochdir")
-- H.autocmd("InsertEnter",  "*",   "if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif")

-- H.autocmd("InsertLeave",  "*",   "set noautochdir | execute 'cd' fnameescape(save_cwd)")
-- H.autocmd("InsertLeave",  "*",   "if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif")

H.autocmd("TermOpen", "*", "setl bufhidden=hide")
H.autocmd("TermOpen", "*", "startinsert")
H.autocmd("TermOpen", "*", "setl nonumber")

H.autocmd("WinLeave", "*", "if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif")

-- vim.api.nvim_command('autocmd WinEnter * v:lua.thenameiswiiwin.autocmds.Preview_func()')

-- autocmd WinEnter * call Preview_func()
--
-- function! Preview_func()
--   if &pvw
--     setlocal nonumber norelativenumber
--    endif
-- endfunction
--
--
return H
