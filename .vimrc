execute pathogen#infect()
syntax on
filetype plugin indent on

" colors
autocmd vimenter * ++nested colorscheme gruvbox
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
filetype plugin on
"gruvbox theme, too bright one for me. Currently unien seoul256
"let g:lightline = {}
"let g:lightline.colorscheme = 'gruvbox'
"let g:lightline_gruvbox_style = 'hard'
let g:lightline = {
          \ 'colorscheme': 'seoul256',
                \ }

let g:lf_replace_netrw = 1 " Open lf when vim opens a directory

set nocompatible
set number
set relativenumber

" Настройки табов для Python, согласно рекоммендациям
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
" Автоотступ
set autoindent
" Включаем 256 цветов в терминале, мы ведь работаем из иксов?
" Нужно во многих терминалах, например в gnome-terminal
set t_Co=256

" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

set mousehide "Спрятать курсор мыши когда набираем текст
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Вырубаем черточки на табах
set showtabline=1

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler
set guicursor=a:blinkon0
set hidden

" Выключаем звук в Vim
set visualbell t_vb=

set guifont=Inconsolata\ LGC\ Nerd\ Font\ Mono\ 14

" set <M-BS>=0x1b 0x7f
" set <M-Left>=^[b
" set <M-Right>=^[f
nnoremap <M-BS> db
noremap <M-Left> b
noremap <M-Right> e
 noremap! <M-BS> <C-W>
noremap! <M-Left> <C-Left>
noremap! <M-Right> <C-Right>
snoremap <M-Left> <C-O>b
snoremap <M-Right> <C-O>e

set noshowmode " stop showing insert cause now in's in the lightline
