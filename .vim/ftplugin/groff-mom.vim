cnoremap <buffer> MP write \| !pdfmom -Tps -Kutf8 % > %:r.ps
cnoremap <buffer> MM write \| !pdfmom -Tpdf -Kutf8 % > %:r.pdf
cnoremap <buffer> MR write \| !preconv % \| refer \| groff -Tpdf -Kutf8 -mom % > %:r.pdf

nnoremap <buffer> <Leader>.ro i.FT R<CR>
nnoremap <buffer> <Leader>.it i.FT I<CR>
nnoremap <buffer> <Leader>.bd i.FT B<CR>
nnoremap <buffer> <Leader>.bi i.FT BI<CR>
nnoremap <buffer> <Leader>it i.FT I<CR>.FT R<Esc>O
nnoremap <buffer> <Leader>bd i.FT B<CR>.FT R<Esc>O
nnoremap <buffer> <Leader>bi i.FT BI<CR>.FT R<Esc>O

nnoremap <buffer> <Leader>.rr :read ~/.config/nvim/templates/groff/refer_apa<CR>
