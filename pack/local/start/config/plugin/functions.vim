" indent tools
function! SoftIdent()
	set expandtab
	set shiftwidth=2
	set softtabstop=2
endfunction

function! TabIdent()
	set noexpandtab
	set shiftwidth=2
	set softtabstop=0
endfunction

function! ReidentAll()
	let ln=line('.')
	let cl=col('.')
	exe "normal! gg=G<cr>"
	cal cursor(ln, cl)
endfunction

function! BuffDelAll()
  bufdo bd
endfunction
