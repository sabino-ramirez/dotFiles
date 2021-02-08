" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'jiangmiao/auto-pairs' "auto pairs for symbols
  Plug 'karoliskoncevicius/distilled-vim' "themes
  Plug 'tomasr/molokai'
  Plug 'fcpg/vim-orbital'
  Plug 'jacoborus/tender.vim'
  Plug 'gregsexton/atom'
  Plug 'neoclide/coc.nvim', {'branch': 'release'} "coc
  Plug 'yuezk/vim-js' "syntax highlighting for js 
  Plug 'maxmellon/vim-jsx-pretty' 
  Plug 'tomlion/vim-solidity' "solidity compiler
  Plug 'vim-airline/vim-airline' "status line
  Plug 'vim-airline/vim-airline-themes' "status line themes
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} "ranger plugin
  Plug 'vim-syntastic/syntastic' "syntastic checker

  Plug 'junegunn/fzf.vim' 
  Plug 'airblade/vim-rooter'
call plug#end()
  
