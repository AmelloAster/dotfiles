" move keymap"{{{
" ------------------------------------------------------------------------
nnoremap 8 :m .-2<CR>==
nnoremap 5 :m .+1<CR>==
vnoremap 8 :m '<-2<CR>gv==gv
vnoremap 5 :m '>+1<CR>gv==gv
"}}}

" CTRL-X and SHIFT-Del are Cut
vnoremap tx "+x

vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap yc "+y
vnoremap yci "+y


" CTRL-A is Select all
noremap <C-a> gggH<C-O>G
inoremap <C-a> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-a> <C-C>gggH<C-O>G
onoremap <C-a> <C-C>gggH<C-O>G
snoremap <C-a> <C-C>gggH<C-O>G
xnoremap <C-a> <C-C>ggVG<C-O>G
