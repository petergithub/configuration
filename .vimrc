" read the example "vimrc" file contents 
" :r $VIMRUNTIME/vimrc_example.vim
" For more information type  :help vimrc-intro

" refer to http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_%28Part_1%29
" https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
" https://github.com/wklken/k-vim/blob/master/vimrc

" get customized vim configuration file .vimrc
" wget --no-check-certificate -O ~/.vimrc https://raw.githubusercontent.com/petergithub/configuration/master/.vimrc

" To turn off autoindent when you paste code, there's a special paste mode.
" `:set paste` or `set noautoindent`. After you pasted your code, turn off the paste-mode `:set nopaste`

" Making xml file with pretty format
" :%!xmllint --format %

" Command mode, Insert mode and Normal mode

" save file with sudo :W
command W w !sudo tee % > /dev/null	
" or :w !sudo tee %

" Key (re)Mappings {
	let mapleader="\<Space>" "Remap Leader Key. Mapped to \ by default (:echo mapleader)
	"inoremap <leader><space> <Esc>	
	" mapping ESC
	inoremap jj <Esc>		
	" Go to home and end using capitalized directions
	noremap H ^	
	noremap L $
    "noremap j gj	 " Wrapped lines goes down/up to next row, rather than next line in file.
    "noremap k gk
	" Quickly close the current window
	nnoremap <leader>q :q<CR>	
	" Quickly save the current file
	nnoremap <leader>w :w<CR>	
	" Quickly start a shell 
	nnoremap <leader>s :sh<CR>	
	" 命令行模式增强，ctrl - a到行首， -e 到行尾
	cnoremap <C-j> <t_kd>
	cnoremap <C-k> <t_ku>
	cnoremap <C-a> <Home>
	cnoremap <C-e> <End>
" }

" General settings {
	set tabstop=4
	"set number		" display line number; hide line number :set nonum
	"set wrap  "wrap a line; set nowrap 取消换行
	"set relativenumber	" or :set rnu
	"au FocusLost * :set norelativenumber number
	"au FocusGained * :set relativenumber
	"" 插入模式下用绝对行号, 普通模式下用相对
	"autocmd InsertEnter * :set norelativenumber number
	"autocmd InsertLeave * :set relativenumber
	
	set ru "show the percentage of the content 
	set showmatch	" highlight match bracekets
	" How many tenths of a second to blink when matching brackets
	set matchtime=2
	set hlsearch	" highlight searched text
	set incsearch	" search increasely
	" set ignorecase
	set smartcase	" ignore case if search pattern is all lowercase, case-sensitive otherwise
	set autoread " 文件修改之后自动载入
	set t_ti= t_te=	"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制. 好处：误删什么的，如果以前屏幕打开，可以找回

	set backupdir=/data/tmp,.	" set backup file and folder
	set directory=/data/tmp,.
	
	set termencoding=utf-8	" set encoding
	set encoding=utf-8
	set fileencoding=utf-8
	set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" }

	" window: Smart way to move between windows 分屏窗口移动 {
	map wj <C-W>j
	map wk <C-W>k
	map wh <C-W>h
	map wl <C-W>l
	"split window vertically
	nmap wv <C-w>v	
	"close current window
	nmap wc <C-w>c	
	"spllit window horizon
	nmap ws <C-w>s	
" }

" tab 操作 {
	nnoremap <C-t>     :tabnew<CR>
	inoremap <C-t>     <Esc>:tabnew<CR>

	map <leader>th :tabfirst<cr>
	map <leader>tl :tablast<cr>
	
	map <leader>tj :tabnext<cr>
	map <leader>tk :tabprev<cr>
	map <leader>tn :tabnext<cr>
	map <leader>tp :tabprev<cr>
	
	map <leader>te :tabedit<cr>
	map <leader>td :tabclose<cr>
	map <leader>tm :tabm<cr>
" }

