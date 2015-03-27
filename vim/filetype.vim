" ufm filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufNewFile,BufRead *.pt setfiletype html
  au! BufNewFile,BufRead *.cpt setfiletype html
  au! BufNewFile,BufRead *.zcml setfiletype html
  au! BufNewFile,BufRead *.tpl setfiletype html
  au! BufNewFile,BufRead *.jinja2 setfiletype html
  au! BufNewFile,BufRead *.py_tmpl setfiletype python
augroup END
