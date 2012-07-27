
" Options
" let g:scommenter_move_cursor = g:self#IS_TRUE
" let g:scommenter_description_starts_from_first_line = g:self#IS_FALSE
" let g:scommenter_autostart_insert_mode = g:self#IS_FALSE
" let g:scommenter_method_description_space = 2
" let g:scommenter_class_description_space = 2
" let g:scommenter_object_description_space = 2
" let g:scommenter_trait_description_space = 2
" let g:scommenter_inner_class_description_space = 1
" let g:scommenter_inner_object_description_space = 1
" let g:scommenter_inner_trait_description_space = 1
" let g:scommenter_field_description_space = 1
" let g:scommenter_smart_description_spacing = g:self#IS_TRUE
" let g:scommenter_smart_since_spacing = g:self#IS_TRUE
" let g:scommenter_class_author = 'Ada Lovelace'
" let g:scommenter_class_version = '1.0, ' . strftime("%d/%m/%y")
" let g:scommenter_since_release = '1.0'
" let g:scommenter_class_svn_id = '$Id: scala#commenter.vim 318 2010-05-10 22:47:17Z  $'
" let g:scommenter_file_author = 'Ada Lovelace'
" let g:scommenter_file_copyright_line = ''
" let g:scommenter_company_name = 'FooBar Corp, Inc.'
" let g:scommenter_file_copyright_list = [
" \    'Copyright 2010 ' . g:scommenter_company_name . 'All rights reserved',
" \    'PPOPRIETARY/CONFIDENTIAL, Use is subject to licence terms.'
" \]
" let g:scommenter_file_noautotime = g:self#IS_FALSE
" let g:scommenter_update_comments = g:self#IS_TRUE
" let g:scommenter_add_empty_line = 1
"function! ScalaCommenter_OwnFileComments()
"  call append(0, '/*')
"  call append(1, ' * File name   : ' . bufname("%"))
"  call append(2, ' * authors     : ')
"  call append(3, ' * created     : ' . strftime("%c"))
"  call append(4, ' *')
"  call append(5, ' */')
"endfunction
" let g:scommenter_std_file_comments = g:self#IS_FALSE
" let g:scommenter_scala_api_file_comments = g:self#IS_FALSE 
" let g:scommenter_sun_file_comments = g:self#IS_FALSE
" let g:scommenter_top_level_tparams_only = g:self#IS_TRUE
" let g:scommenter_page_width = 80
" let g:scommenter_extra_line_text_offset = -1
" let g:scommenter_user_tags = []
" let g:scommenter_warning_message_enable = g:self#IS_FALSE
" let g:scommenter_line_between_user_unknown_and_std_tags = g:self#IS_TRUE
" let g:scommenter_user_unknown_before_std_tags = g:self#IS_TRUE
" let g:scommenter_warn_deleted_tags = g:self#IS_TRUE

autocmd FileType scala map <M-c> :call scala#commenter#Writer()<CR>
autocmd FileType scala map cm :call scala#commenter#Writer()<CR>
autocmd FileType scala map cf :call scala#commenter#Formatter()<CR>

map <Leader>sr :call scalacommenter#reload()<CR>
