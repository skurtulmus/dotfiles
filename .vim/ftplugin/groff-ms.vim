set syntax=nroff

cnoremap <buffer> MS write \| !groff -Tpdf -Kutf8 -ms % > %:r.pdf
cnoremap <buffer> MR write \| !preconv % \| refer \| groff -Tpdf -Kutf8 -ms > %:r.pdf
cnoremap <buffer> MM write \| !preconv % \| refer \| groff -Tpdf -Kutf8 -mspdf > %:r.pdf
cnoremap <buffer> MU write \| !preconv % \| refer \| groff -U -Tpdf -Kutf8 -ms > %:r.pdf
cnoremap <buffer> MP write \| !preconv % \| refer \| pdfroff -i -Kutf8 -mspdf --stylesheet=style.ms > %:r.pdf
cnoremap <buffer> MD write \| !preconv % \| refer \| pic \| tbl \| pdfroff -i -Kutf8 -mspdf --stylesheet=style.ms > %:r.pdf
cnoremap <buffer> MT write \| !tbl % \| groff -Tpdf -Kutf8 -ms > %:r.pdf
cnoremap <buffer> MH write \| !groff -Tpdf -Kutf8 -ms -pdfmark % > %:r.pdf

inoremap <buffer> -t< .NH<CR>.XS<CR>.XE<Esc>2ko
inoremap <buffer> --< .IP \[bu]<CR>
inoremap <buffer> -0< .nr LISN 1 1<CR>.IP \n[LISN]\[char46]<CR>
inoremap <buffer> -+< .IP \n+[LISN]\[char46]<CR>
inoremap <buffer> -p< <CR>.[<CR>.]<Esc>2kO.ds PINT
inoremap <buffer> -r< <CR>.[<CR>.]<Esc>O
inoremap <buffer> -l< .bp<CR>.[<CR>$LIST$<CR>.]<Esc>
inoremap <buffer> -h< .pdfhref W -D

nnoremap <buffer> <Leader>.co :read ~/.vim/templates/ms/cover_ms<CR>
nnoremap <buffer> <Leader>.so :read ~/.vim/templates/ms/source_ms<CR>
nnoremap <buffer> <Leader>.ds :read ~/.vim/templates/ms/strings_ms<CR>
nnoremap <buffer> <Leader>.rr :read ~/.vim/templates/groff/refer_apa<CR>
