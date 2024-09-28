-- ░▀█▀░█▀█░▀█▀░▀█▀░░░░█░░░█░█░█▀█
-- ░░█░░█░█░░█░░░█░░░░░█░░░█░█░█▀█
-- ░▀▀▀░▀░▀░▀▀▀░░▀░░▀░░▀▀▀░▀▀▀░▀░▀

local homedir = vim.env.HOME
local ymllsjs = ".local/share/yaml-language-server/out/server/src/server.js"
local focused = false

vim.cmd.colorscheme("puerh")
vim.cmd.highlight({"endspace", "ctermbg=124"})
vim.cmd.match([[endspace /\s\+$/]])

function focus()
	os.execute("focus")
	vim.cmd("Goyo")
	if focused == false then
		vim.cmd("highlight endspace ctermbg=NONE")
	else
		vim.cmd("highlight endspace ctermbg=124")
	end
	focused = not focused
end

local lsp_servers = {
	c = {'clangd'},
	rust = {'rust-analyzer'},
	python = {'pylsp'},
	['bash,sh'] = {'bash-language-server', 'start'},
	['yaml,yml'] = {'node', homedir .. '/' .. ymllsjs, '--stdio'},
}

local yaml_settings = {
	yaml = {
		validate = true,
		schemas = {
			kubernetes = {
				'k8s*/*/*.yaml',
				'k8s*/*/*.yml',
				'k8s*/*.yaml',
				'k8s*/*.yml',
			}
		}
	}
}

for filetype, server in pairs(lsp_servers) do
	vim.api.nvim_create_autocmd('FileType', {
		pattern = filetype,
		callback = function(ev)
			vim.lsp.start({
				name = filetype .. '-lsp',
				cmd = server,
				root_dir = vim.fs.root(ev.buf, {'tags', '.git'}),
				settings = yaml_settings,
			})
		end,
	})
end

vim.api.nvim_create_autocmd("InsertEnter", {
	pattern = "*",
	command = "highlight endspace ctermbg=NONE",
})
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "highlight endspace ctermbg=124",
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.c",
	command = "0read " .. homedir .. "/.config/nvim/templates/c/new_c",
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.pl",
	command = "0read " .. homedir .. "/.config/nvim/templates/perl/new_pl",
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.tex",
	command = "0read " .. homedir .. "/.config/nvim/templates/tex/new_tex",
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.mom",
	command = "0read " .. homedir .. "/.config/nvim/templates/groff-mom/new_mom",
})
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.ms",
	command = "0read " .. homedir .. "/.config/nvim/templates/groff-ms/new_ms",
})
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
	pattern = "*.mom",
	command = "set filetype=groff-mom | runtime! ftplugin/groff-mom.vim",
})
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
	pattern = "*.ms",
	command = "set filetype=groff-ms | runtime! ftplugin/groff-ms.vim",
})
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
	pattern = "*.rr",
	command = " set filetype=refer-db | runtime! ftplugin/refer-db.vim",
})

vim.opt.statusline = ''
vim.opt.statusline:append('%#slnormal#%{(mode()=="n")?"  <NORMAL> ":""}')
vim.opt.statusline:append('%#slinsert#%{(mode()=="i")?"  <INSERT> ":""}')
vim.opt.statusline:append('%#slvisual#%{(mode()=="v")?"  <VISUAL> ":""}')
vim.opt.statusline:append('%#slreplace#%{(mode()=="r")?"  <REPLACE> ":""}')
vim.opt.statusline:append('%#slfilename# %F')
vim.opt.statusline:append('%=')
vim.opt.statusline:append('%#slformat# %y %{(&fenc!=""?&fenc:&enc)}/%{&fileformat}')
vim.opt.statusline:append('%#slnumber# %l/%L::%c %p%%')

vim.opt.clipboard:append('unnamedplus')
vim.opt.path:append('**')

vim.o.mouse = ''
vim.o.shortmess = 'tTC'
--vim.o.guicursor = 'n-v-c:hor20,i-ci-ve:ver25,r-cr:block,o:hor50'
vim.o.shadafile = homedir .. '/.config/nvim/shada'
vim.o.backupdir = homedir .. '/.config/nvim/backup'
vim.o.directory = homedir .. '/.config/nvim/swap'
vim.o.omnifunc = 'syntaxcomplete#Complete'
vim.o.listchars = 'tab:|  '
vim.o.spelllang = 'tr,en,fr'
vim.o.encoding = 'utf-8'
vim.o.foldmethod = 'manual'
vim.o.background = 'dark'

vim.o.laststatus = 2
vim.o.history = 500

vim.o.list = true
vim.o.backup = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmatch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.lazyredraw = true
vim.o.termguicolors = false
-- vim.o.foldenable = true
-- vim.o.hlsearch = true
-- vim.o.incsearch = true
-- vim.o.wildmenu = true
-- vim.o.autoindent = true
-- vim.o.errorbells = false

vim.g.mapleader = ' '
vim.g.tex_flavor = 'latex'
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 20
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide= [[\(^\|\s\s\)\zs\.\S\+]]

vim.keymap.set({'n', 'v'}, 'K', '$')
vim.keymap.set({'n', 'v'}, '<Leader>k', 'g_')

vim.keymap.set('n', '<Leader>n', '<cmd>new<cr>')
vim.keymap.set('n', '<Leader>m', '<cmd>vnew<cr>')
vim.keymap.set('n', '<Leader>t', '<cmd>tabnew<cr>')
vim.keymap.set('n', '<Leader>c', '<cmd>nohlsearch<cr>')
vim.keymap.set('n', '<Leader>s', '<cmd>set spell!<cr>')
vim.keymap.set('n', '<Leader>h', '<cmd>digraph<cr>')
vim.keymap.set('n', '<Leader>d', '<C-]>')
vim.keymap.set('n', '<Leader>b', '<C-t>')
vim.keymap.set('n', '<Leader><cr>', 'o<cr><esc>')
vim.keymap.set('n', '<cr>', 'o<esc>')
vim.keymap.set('n', '<Leader>r', '<cmd>Rg<cr>')
vim.keymap.set('n', '<Leader>o', '<cmd>Files<cr>')
vim.keymap.set('n', '<Leader>e', '<cmd>buffers<cr>:buffer<Space>')
vim.keymap.set('n', '<Leader>f', focus, { silent = true })
vim.keymap.set('n', '<Leader>x', vim.diagnostic.open_float)

vim.keymap.set('i', '{', '{}<Left>')
vim.keymap.set('i', '(', '()<Left>')
vim.keymap.set('i', '[', '[]<Left>')
vim.keymap.set('i', '""', '""<Left>')
vim.keymap.set('i', "''", "''<Left>")
vim.keymap.set('i', '__', '__<Left>')
vim.keymap.set('i', '<>', '<><Left>')
vim.keymap.set('i', '<C-l>', '<Right>')

vim.keymap.set('c', 'RC', 'e ' .. homedir .. '/.config/nvim/init.lua')
vim.keymap.set('c', 'TG', 'TagbarToggle')
vim.keymap.set('c', 'FE', 'Lexplore!')
vim.keymap.set('c', 'FF', 'fin<Space>')
vim.keymap.set('c', 'SB', '%s//g<Left><Left>')
vim.keymap.set('c', 'OC', '%s///gn<Left><Left><Left><Left>')
vim.keymap.set('c', 'WC', '!sed "s/^\\.\\S.*//g" %:p | wc -w')
vim.keymap.set('c', 'WP', 'pdftotext %:r.pdf - | wc -w')
vim.keymap.set('c', 'W<cr>', 'w<cr>')
vim.keymap.set('c', 'Q<cr>', 'q<cr>')
vim.keymap.set('c', 'K<cr>', 'qa!<cr>')
