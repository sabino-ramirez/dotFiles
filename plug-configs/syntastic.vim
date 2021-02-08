set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"let g:syntastic_python_checkers = ['pylint']
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_solidity_checkers = ['solc', 'solhint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_vim_checkers = ['vint']

" toggle passive and active mode
silent! nmap <F6> :SyntasticToggleMode<CR>
