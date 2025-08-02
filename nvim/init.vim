" ===========================
" Клавиши
" ===========================

nnoremap <C-b> :NERDTreeToggle<CR>

" Сочетание клавиш для отключения подсветки поиска
nnoremap <Esc> :nohlsearch<CR>

" Отключение стрелок для навигации
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

noremap! <Up> <NOP>
noremap! <Down> <NOP>
noremap! <Left> <NOP>
noremap! <Right> <NOP>

" Прокрутка + центрирование
nnoremap <C-D> <C-D>zz
nnoremap <C-U> <C-U>zz

" ===========================
" Основные настройки
" ===========================
" Кодировка
set encoding=utf-8             " Устанавливаем кодировку UTF-8
set fileencodings=utf-8        " Поддержка кодировки UTF-8 для файлов

set nocompatible               " Отключаем совместимость с vi
filetype plugin indent on      " Включаем поддержку плагинов 
set clipboard+=unnamedplus      " System Buffer

" ===========================
" Настройки отображения
" ===========================
set number                     " Включаем абсолютную нумерацию для текущей строки
set numberwidth=1              " Ширина номера строки

highlight LineNr ctermfg=NONE guifg=NONE  " Отключаем цвет для номеров строк
highlight CursorLineNr ctermfg=NONE guifg=NONE  " Отключаем цвет для текущего номера строки

syntax on                      " Включаем подсветку синтаксиса

set scrolloff=5                " Отступ от края экрана при прокрутке

" ===========================
" Настройки табуляции
" ===========================
set expandtab                  " Заменяем табуляции на пробелы
set tabstop=2                  " Количество пробелов для табуляции
set shiftwidth=2               " Количество пробелов при автодобавлении отступов
set softtabstop=2              " Количество пробелов при автотабуляции

set smarttab                   " Умное поведение табуляции
set smartindent                " Умное выравнивание для кода

" ===========================
" Языковые настройки
" ===========================
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" Поддержка русской раскладки для команд

" ===========================
" Безопасность
" ===========================
set modelines=0     " Отключаем CVE-2007-2438 уязвимость

" ===========================
" Производительность
" ===========================
set backspace=indent,eol,start " Больше возможностей для удаления текста
set nowrap                     " Отключаем перенос строк
set ruler                      " Показывать текущие координаты курсора
set mouse=a                    " Включаем поддержку мыши
" ===========================
" Автокоманды
" ===========================
" Не создавать резервные копии для crontab и chpass
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" ===========================
" Поиск
" ===========================
set hlsearch                   " Включаем подсветку поиска
set incsearch                  " Поиск по мере ввода
set ic                         " Игнорировать регистр при поиске
set smartcase                  " Игнорировать регистр, если нет заглавных букв

set clipboard=unnamedplus

" ===========================
" Плагины
" ===========================

call plug#begin("~/.config/nvim/plugged")
Plug 'Mofiqul/dracula.nvim'
Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" ===========================
" Темы
" ===========================

colorscheme dracula
