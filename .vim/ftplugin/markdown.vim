inoremap <buffer> -i> ![]()<Esc>2hi
inoremap <buffer> -o> <CR>&nbsp;<CR><CR>
inoremap <buffer> -// <!--  --><Esc>3hi
cnoremap <buffer> MD write \| !pandoc % -o %:r.pdf
cnoremap <buffer> MG write \| !pandoc % -t ms -o %:r.pdf
cnoremap <buffer> MB write \| !pandoc % -t beamer -o %:r.pdf
nnoremap <buffer> <Leader>c _i-<Space>[<Space>]<Space><Esc>j
nnoremap <buffer> <Leader>x _f[lxix<Esc>
nnoremap <buffer> <Leader>.bm :read ~/.vim/templates/md/beamer_meta<CR>
nnoremap <buffer> <Leader>.un :read ~/.vim/templates/md/uni_meta<CR>
