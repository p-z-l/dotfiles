" DEFX

call defx#custom#option('_', {
      \ 'winwidth': 30,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })
nmap <silent> <F2> :Defx -columns=indent:git:mark:icons:filename:type<cr>

autocmd FileType defx call s:defx_mappings()

function! s:defx_mappings() abort
	  nnoremap <silent><buffer><expr> o
	  \ <SID>defx_open()
      nnoremap <silent><buffer><expr> .
      \ defx#do_action('toggle_ignored_files')
      nnoremap <silent><buffer><expr> R
      \ defx#do_action('redraw')
      nnoremap <silent><buffer><expr> fn
      \ defx#do_action('new_file')
      nnoremap <silent><buffer><expr> fr
      \ defx#do_action('rename')
	  nnoremap <silent><buffer><expr> fd
	  \ defx#do_action('remove')
      nnoremap <silent><buffer><expr> yy
      \ defx#do_action('yank_path')
endfunction

function! s:defx_open() abort
    if defx#is_directory()
        return defx#do_action('open_or_close_tree')
    endif
    return defx#do_action('multi', ['drop'])
endfunction

" DEFX-ICONS
let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 1
let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = '*'
let g:defx_icons_copy_icon = ''
let g:defx_icons_move_icon = ''
let g:defx_icons_parent_icon = ''
let g:defx_icons_default_icon = ''
let g:defx_icons_directory_symlink_icon = ''
let g:defx_icons_root_opened_tree_icon = ''
let g:defx_icons_nested_opened_tree_icon = ''
let g:defx_icons_nested_closed_tree_icon = ''

" DEFX-GIT
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })
