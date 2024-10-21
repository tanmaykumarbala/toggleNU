if exists('g:default_toogle_map_key_user')
	let g:default_toogle_number_map_key = g:default_toogle_number_map_key_user	
else
	let g:default_toogle_number_map_key = "<leader>n"
endif

""" Function to toogle number.
function ToggleNU()
	if &l:nu == "1"
		set nonu
		set norelativenumber
		echo "Number off"
	else
		set nu
		set relativenumber
		echo "Number on"
	endif
endfunction

""" Setting the command for easy refrence.
command! -nargs=0 ToggleNumber :call ToggleNU()

""" Default key maping.
execute 'nnoremap '.g:default_toogle_number_map_key.' :ToggleNumber <cr>'
execute 'inoremap '.g:default_toogle_number_map_key.' <c-o>:ToggleNumber <cr>'
