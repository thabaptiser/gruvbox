" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Retro groove color scheme for Airline
" Author: morhetz <morhetz@gmail.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 12 Aug 2017
" -----------------------------------------------------------------------------

let g:airline#themes#gruvbox#palette = {}

function! airline#themes#gruvbox#refresh()

	" Colors
	let s:gray     = [245, '#928374']
	let s:darkgray = [245, '#665c54']
	let s:golden   = [143, '#d79921']
	let s:pink     = [131, '#cc241d']
	let s:blue     = [ 67, '#98971a']
	let s:orange   = [166, '#d65d0e']
	let s:outerfg  = [ 16, '#fbf1c7']
	let s:outerfgi = [ 16, '#3c3836']

	" Backgrounds
	let s:outerbg  = [ 16, 'NONE']
	let s:innerbg  = [234, 'NONE']

	" Normal mode
	let s:N1 = [s:outerfg[1], s:outerbg[1], s:outerfg[0], s:gray[0]]
	let s:N3 = [s:gray[1]   , s:innerbg[1], s:gray[0]   , s:innerbg[0]]

	" Normal mode - modified
	let s:NM1 = [s:darkgray[1], s:orange[1], s:darkgray[0], s:orange[0]]
	let s:NM3 = [s:orange[1]  , s:outerbg[1], s:orange[0], s:darkgray[0]]

	" Insert mode
	let s:I1 = [s:darkgray[1], s:golden[1], s:outerfg[0], s:golden[0]]
	let s:I3 = [s:golden[1]  , s:innerbg[1], s:golden[0], s:innerbg[0]]

	" Visual mode
	let s:V1 = [s:darkgray[1], s:pink[1], s:outerfg[0], s:pink[0]]
	let s:V3 = [s:pink[1]    , s:innerbg[1], s:pink[0], s:innerbg[0]]

	" Replace mode
	let s:R1 = [s:darkgray[1], s:blue[1], s:outerfg[0], s:blue[0]]
	let s:R3 = [s:blue[1], s:innerbg[1], s:blue[0], s:innerbg[0]]

	" Inactive pane
	let s:IA = [s:darkgray[1], s:outerbg[1], s:innerbg[0], s:innerbg[0]]
	let s:IAc = [s:gray[1], s:outerbg[1], s:outerbg[0], s:outerbg[0]]

	let g:airline#themes#transparent#palette = {}
	let g:airline#themes#transparent#palette.accents = {
			\ 'red': ['#d70000', '', 160, '', '']}

	let g:airline#themes#transparent#palette.inactive = {
			\ 'airline_a': s:IA,
			\ 'airline_b': s:IA,
			\ 'airline_c': s:IAc,
			\ 'airline_x': s:IA,
			\ 'airline_y': s:IA,
			\ 'airline_z': s:IA}

	let g:airline#themes#transparent#palette.inactive_modified = {
			\ 'airline_a': s:IA,
			\ 'airline_b': s:IA,
			\ 'airline_c': s:NM3,
			\ 'airline_x': s:IA,
			\ 'airline_y': s:IA,
			\ 'airline_z': s:IA}

	let g:airline#themes#transparent#palette.normal = {
			\ 'airline_a': s:N1,
			\ 'airline_b': s:N3,
			\ 'airline_c': s:N3,
			\ 'airline_x': s:N3,
			\ 'airline_y': s:N3,
			\ 'airline_z': s:N3}

	let g:airline#themes#transparent#palette.normal_modified = {
			\ 'airline_a': s:NM1,
			\ 'airline_b': s:N3,
			\ 'airline_c': s:N3,
			\ 'airline_x': s:N3,
			\ 'airline_y': s:N3,
			\ 'airline_z': s:NM3}

	let g:airline#themes#transparent#palette.insert = {
			\ 'airline_a': s:I1,
			\ 'airline_b': s:N3,
			\ 'airline_c': s:N3,
			\ 'airline_x': s:N3,
			\ 'airline_y': s:N3,
			\ 'airline_z': s:I3}
	let g:airline#themes#transparent#palette.insert_modified = {}

	let g:airline#themes#transparent#palette.replace = {
			\ 'airline_a': s:R1,
			\ 'airline_b': s:N3,
			\ 'airline_c': s:N3,
			\ 'airline_x': s:N3,
			\ 'airline_y': s:N3,
			\ 'airline_z': s:R3}
	let g:airline#themes#transparent#palette.replace_modified = {}

	let g:airline#themes#transparent#palette.visual = {
			\ 'airline_a': s:V1,
			\ 'airline_b': s:N3,
			\ 'airline_c': s:N3,
			\ 'airline_x': s:N3,
			\ 'airline_y': s:N3,
			\ 'airline_z': s:V3}
	let g:airline#themes#transparent#palette.visual_modified = {}

	let g:airline#themes#transparent#palette.normal.airline_warning = s:NM1

	let g:airline#themes#transparent#palette.normal_modified.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

	let g:airline#themes#transparent#palette.insert.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

	let g:airline#themes#transparent#palette.insert_modified.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

	let g:airline#themes#transparent#palette.visual.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

	let g:airline#themes#transparent#palette.visual_modified.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

	let g:airline#themes#transparent#palette.replace.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

	let g:airline#themes#transparent#palette.replace_modified.airline_warning =
			\ g:airline#themes#transparent#palette.normal.airline_warning

endfunction

call airline#themes#gruvbox#refresh()

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker:
