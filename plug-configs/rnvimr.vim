  " Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1 
  "alt-i resizes ranger
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR> 
  "space r toggles ranger
nmap <space>r :RnvimrToggle<CR> 
  "hides gitignore files
let g:rnvimr_hide_gitignore = 1 
  "nvim deletes buffer of file deleted by ranger
let g:rnvimr_enable_bw = 1 
  " normal mode cursor in ranger window
highlight link RnvimrNormal CursorLine 

