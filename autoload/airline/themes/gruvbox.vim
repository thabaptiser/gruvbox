" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Retro groove color scheme for Airline
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 12 Aug 2017
" -----------------------------------------------------------------------------

let g:airline#themes#gruvbox#palette = {}

function! airline#themes#gruvbox#refresh()
  let s:guibg = '#282828'
  let s:guibg2 = '#282828'
  let s:termbg = 235
  let s:termbg2= 235

  let s:N1 = [ s:guibg , '#928374' , s:termbg , 245 ]
  let s:N2 = [ '#928374' , s:guibg2, 245 , s:termbg2 ]
  let s:N3 = [ '#928374' , s:guibg, 245 , s:termbg]
  let g:airline#themes#simple#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#simple#palette.normal_modified = {
        \ 'airline_c': [ '#df0000' , s:guibg, 160     , s:termbg    , ''     ] ,
        \ }


  let s:I1 = [ s:guibg, '#458588' , s:termbg , 66 ]
  let s:I2 = [ '#928374' , s:guibg2, 245 , s:termbg2 ]
  let s:I3 = [ '#928374' , s:guibg, 245 , s:termbg ]
  let g:airline#themes#simple#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#simple#palette.insert_modified = copy(g:airline#themes#simple#palette.normal_modified)
  let g:airline#themes#simple#palette.insert_paste = {
        \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
        \ }


  let g:airline#themes#simple#palette.replace = {
        \ 'airline_a': [ s:I1[0]   , '#af0000' , s:I1[2] , 124     , ''     ] ,
        \ }
  let g:airline#themes#simple#palette.replace_modified = copy(g:airline#themes#simple#palette.normal_modified)


  let s:V1 = [ s:guibg, '#fe8019' , s:termbg , 208 ]
  let s:V2 = [ '#928374' , s:guibg2, 245 , s:termbg2 ]
  let s:V3 = [ '#928374' , s:guibg, 245 , s:termbg ]
  let g:airline#themes#simple#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#simple#palette.visual_modified = copy(g:airline#themes#simple#palette.normal_modified)


  let s:IA  = [ '#4e4e4e' , s:guibg  , 239 , s:termbg  , '' ]
  let s:IA2 = [ '#4e4e4e' , s:guibg2 , 239 , s:termbg2 , '' ]
  let g:airline#themes#simple#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA2, s:IA2)
  let g:airline#themes#simple#palette.inactive_modified = {
        \ 'airline_c': [ '#df0000', '', 160, '', '' ] ,
        \ }



endfunction

call airline#themes#gruvbox#refresh()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
