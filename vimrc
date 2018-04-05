call pathogen#infect()

syntax on
filetype plugin indent on

map <C-p> :FZF<CR>
map <C-b> :Buffers<CR>

set background=dark
colorscheme solarized
let g:airline_theme='solarized'

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

set spell spelllang=en_nz
