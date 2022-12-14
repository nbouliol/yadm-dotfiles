inoreabbrev <buffer> BB BREAKING CHANGE:
nnoremap    <buffer> i  i<C-r>=<sid>commit_type()<CR>

fun! s:commit_type()
  call complete(1, ['fix: ', 'feat: ', 'chore: ', 'refactor: ', 'docs: ', 'test: '])
  nunmap <buffer> i
  return ''
endfun
