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

set paste

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

highlight ExtraWhitespace ctermbg=red guibg=red
"" The following alternative may be less obtrusive.
"highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
"" Try the following if your GUI uses a dark background.
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

match ExtraWhitespace /\s\+\%#\@<!$/

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
