let mapleader=" "
call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'mcchrish/nnn.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'dylanaraps/wal.vim'
Plug 'joshdick/onedark.vim'
call plug#end()
colorscheme onedark
" use omni completion provided by lsp
set omnifunc=v:lua.vim.lsp.omnifunc
:lua << EOF

require'nvim_lsp'.pyls.setup{on_attach=require'completion'.on_attach}
require'nvim_lsp'.pyls.setup{on_attach=require'diagnostic'.on_attach}
require'nvim_lsp'.clangd.setup {
	on_attach = function()
   		require'completion'.on_attach()
		require'diagnostic'.on_attach()
	end
}
EOF
let g:diagnostic_enable_virtual_text = 1
autocmd BufEnter * lua require'completion'.on_attach()

nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>m :make<CR>


nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

set clipboard+=unnamedplus
set mouse=a
set nu rnu
" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=100
