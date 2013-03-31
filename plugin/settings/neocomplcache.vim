" Disable AutoComplPop.
   let gacp_enableAtStartup = 0
   " Use neocomplcache.
   let gneocomplcache_enable_at_startup = 1
   " Use smartcase.
   let gneocomplcache_enable_smart_case = 1
   " Use camel case completion.
   let gneocomplcache_enable_camel_case_completion = 1
   " Use underbar completion.
  let gneocomplcache_enable_underbar_completion = 1
  " Set minimum syntax keyword length.
  let gneocomplcache_min_syntax_length = 3
  let gneocomplcache_lock_buffer_name_pattern = '\*ku\*'
  
  " AutoComplPop like behavior.
  let gneocomplcache_enable_auto_select = 0
  
  " When you input 'ho-a',neocomplcache will select candidate 'a'.
  let gneocomplcache_enable_quick_match = 1
  
" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }
  
  let gneocomplcache_snippets_dir=$VIMFILES."/snippets"
  inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>"  "\<TAB>"
  inoremap <expr><C-TAB>  pumvisible() ? "\<C-p>"  "\<TAB>"
  
  
  " Define keyword.
  if !exists('gneocomplcache_keyword_patterns')
    let gneocomplcache_keyword_patterns = {}
  endif
  let gneocomplcache_keyword_patterns['default'] = '\h\w*'
  
  " Plugin key-mappings.
  imap <C-k>     <Plug>(neocomplcache_snippets_expand)
  smap <C-k>     <Plug>(neocomplcache_snippets_expand)
  inoremap <expr><C-g>     neocomplcache#undo_completion()
  inoremap <expr><C-z>     neocomplcache#undo_completion()
  inoremap <expr><C-l>     neocomplcache#complete_common_string()
  
  " SuperTab like snippets behavior.
  "imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)"  pumvisible() ? "\<C-n>"  "\<TAB>"
  
  " Recommended key-mappings.
  " <CR> close popup and save indent.
  " inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
  inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup()  "\<CR>"
  " <TAB> completion. THIS HAS NO USE WHEN WITH SNIPMATE
  " inoremap <expr><TAB>  pumvisible() ? "\<C-n>"  "\<TAB>"
  " <SPACE> completion.
  inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>"  "\<SPACE>"
  
  
  " <C-h>, <BS> close popup and delete backword char.
  inoremap <expr><C-h> neocomplcache#close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplcache#close_popup()."\<C-h>"
  
  inoremap <expr><C-y>  neocomplcache#close_popup()
  inoremap <expr><C-e>  neocomplcache#cancel_popup()
  
  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let gneocomplcache_enable_auto_select = 1
  "let gneocomplcache_disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>"  "\<TAB>"
  "inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
  
  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
  
  " Enable heavy omni completion.
  if !exists('gneocomplcache_omni_patterns')
    let gneocomplcache_omni_patterns = {}
  endif
  let gneocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*'
  let gneocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*'
  let gneocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
  let gneocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*'
