" ultisnips_custom.vim - Custom UltiSnips settings
" Maintainer:   Noah Frederick

if exists(":SkelEdit") || !has("python") && !has("python3")
  finish
endif

augroup ultisnips_custom
  autocmd!
  autocmd BufNewFile * silent! call util#snippet#InsertSkeleton()
augroup END

" vim: fdm=marker:sw=2:sts=2:et
