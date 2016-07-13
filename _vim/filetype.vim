" ufm filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufNewFile,BufRead *.eslintrc setfiletype json
  au! BufNewFile,BufRead *.babelrc setfiletype json
augroup END
