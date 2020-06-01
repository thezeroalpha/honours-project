let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path('ag -l -g ""')
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <Plug>RelativelyCompleteFile :RelativelyCompleteFile
inoremap <silent> <Plug>(peekaboo) :call peekaboo#aboo()
cnoremap <expr> <C-R><C-O><C-P> traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr> <C-R><C-O><C-F> traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr> <C-R><C-O><C-A> traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr> <C-R><C-O><C-W> traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-P> traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-F> traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-A> traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr> <C-R><C-R><C-W> traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr> <C-R><C-P> traces#check_b() ? traces#get_pfile() : "\\"
cnoremap <expr> <C-R><C-F> traces#check_b() ? traces#get_cfile() : "\\"
cnoremap <expr> <C-R><C-A> traces#check_b() ? traces#get_cWORD() : "\\"
cnoremap <expr> <C-R><C-W> traces#check_b() ? traces#get_cword() : "\\"
inoremap <expr> <Plug>(doge-comment-jump-backward) doge#comment#jump("backward")
inoremap <expr> <Plug>(doge-comment-jump-forward) doge#comment#jump("forward")
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
noremap! <expr> <Plug>(StopHL) execute('nohlsearch')[-1]
inoremap <Plug>(operator-sandwich-gv) gv
inoremap <Plug>(operator-sandwich-g@) g@
inoremap <expr> <ScrollWheelDown> pumvisible() ? "" : "<ScrollWheelDown>"
inoremap <expr> <ScrollWheelUp> pumvisible() ? "" : "<ScrollWheelUp>"
inoremap <expr> <C-X>s &spell ? "u[s1z=`]au" : ""
inoremap <C-Z> :w
imap <C-X><C-F> <Plug>RelativelyCompleteFile
inoremap <C-L> :call unicoder#start(1)
map! <D-v> *
nmap  <Plug>(SmoothieBackwards)
nnoremap  :tabclose
nmap  <Plug>(SmoothieDownwards)
nmap  <Plug>(SmoothieForwards)
snoremap <silent>  "_c
nnoremap  >
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippetOrJump()
nnoremap <NL> -
nnoremap  +
map  <Plug>Unicoder
nmap  <Plug>SchemerSynstack
snoremap  "_c
nmap  <Plug>(RepeatRedo)
nnoremap  :tabnew
nmap  <Plug>(SmoothieUpwards)
nnoremap Z :tab split
tnoremap ; :
nmap <silent>  gd <Plug>(doge-generate)
nmap <silent>  w m <Plug>VimwikiMakeTomorrowDiaryNote
nmap <silent>  w y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <silent>  w t <Plug>VimwikiTabMakeDiaryNote
nmap <silent>  w w <Plug>VimwikiMakeDiaryNote
nmap <silent>  w i <Plug>VimwikiDiaryGenerateLinks
nmap <silent>  wi <Plug>VimwikiDiaryIndex
nmap <silent>  ws <Plug>VimwikiUISelect
nmap <silent>  wt <Plug>VimwikiTabIndex
vnoremap  / /\%V
nnoremap  mc :Make clean
nnoremap  m? :set makeprg
nnoremap  L :next
nnoremap  H :previous
vmap <silent>   <Plug>VisualRunCommands
nmap <silent>  $ <Plug>StripTrailingWhitespace
nnoremap  f :Lexplore
nnoremap  td 0f-l"aywf:l"byw0"cywf:l"dywA (=((a*60+b)-(c*60+d))/60.0)F.r:wyw"aywcw=0.a*60F.2xih0:s/:0h/h
nnoremap  O m`O``
nnoremap  o m`o``
nnoremap  yy "+yg_
vnoremap  n "_
nnoremap  n "_
nnoremap  P "+P
nnoremap  p "+p
vnoremap  y "+y
nnoremap  y "+y
nnoremap  D "+D
vnoremap  d "+d
nnoremap  d "+d
nnoremap  <C-E><C-U> :UltiSnipsEdit
nnoremap   :UltiSnipsEdit
nnoremap  <C-E><C-P><C-C> :DropToFoldedVimrczXgg/Plugins {{:nohza/Config {{:nohza
nnoremap   :DropToFoldedVimrczXgg/Plugins {{:nohza/Config {{:nohza
nnoremap  <C-E><C-P><C-I> :DropToFoldedVimrczXgg/Plugins {{:nohza/Installation {{:nohza
nnoremap  	 :DropToFoldedVimrczXgg/Plugins {{:nohza/Installation {{:nohza
nnoremap  <C-E><C-M> :DropToFoldedVimrczXgg/Mappings {{:nohza
nnoremap   :DropToFoldedVimrczXgg/Mappings {{:nohza
nnoremap  <C-E><C-G> :DropToFoldedVimrczXgg/General {{:nohza
nnoremap   :DropToFoldedVimrczXgg/General {{:nohza
nnoremap  <C-E><C-E> :DropToFoldedVimrczXgg/Editor {{:nohza
nnoremap   :DropToFoldedVimrczXgg/Editor {{:nohza
nnoremap  <C-E><C-C> :DropToFoldedVimrczXgg/Commands {{:nohza
nnoremap   :DropToFoldedVimrczXgg/Commands {{:nohza
nnoremap  <C-E><C-A> :DropToFoldedVimrczXgg/^" Autocommands {{:nohza
nnoremap   :DropToFoldedVimrczXgg/^" Autocommands {{:nohza
nnoremap  <C-E><C-V> :DropToFoldedVimrczXgg
nnoremap   :DropToFoldedVimrczXgg
nnoremap  ml :marks a-z:normal! `
nnoremap  mm :Make
nnoremap  hs :set list!
nnoremap  s  :b#
nmap  dh <Plug>DeleteHiddenBuffers
nnoremap  <Right> :tabmove +1
nnoremap  <Left> :tabmove -1
nnoremap  = mlgg=G`lzz
nnoremap  b :ls:b 
nmap  # <Plug>ToggleNumber
nmap  <C-Bslash> <Plug>LfSplit
nmap   <Plug>LfSplit
nmap  \ <Plug>LfEdit
nmap  <C-E><C-L> <Plug>SchemerEdit
nmap   <Plug>SchemerEdit
nmap  qf <Plug>(qf_qf_toggle)
nmap  qp <Plug>(qf_qf_previous)
nmap  qn <Plug>(qf_qf_next)
nnoremap  u :MundoToggle
xmap  ga <Plug>(EasyAlign)
nmap  ga <Plug>(EasyAlign)
nnoremap  sq :call sessions#CloseSession()
nnoremap  sd :call sessions#DeleteSession()
nnoremap  sl :call sessions#LoadSession()
nnoremap  ss :call sessions#SaveSession()
nmap  ww <Plug>VimwikiIndex
nnoremap  wc :VimwikiCheckLinks
nnoremap  ! :Todo
nnoremap  M :Marks
nnoremap  / :Ag
nnoremap  T :Tags
nnoremap  ? :Helptags
nnoremap  W :BLines
nnoremap  G :Lines
nnoremap  B :Buffers
nnoremap  <C-F> :Files 
nnoremap   :Files 
nnoremap  F :Files
nnoremap  to :TagbarOpen fj
nnoremap  tt :TagbarToggle
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap ' :Start
nmap . <Plug>(operator-sandwich-predot)<Plug>(RepeatDot)
nnoremap <silent> <expr> 0 col('.') == match(getline('.'),'\S')+1 ? '0' : '^'
nnoremap : ;
vnoremap ; :
nnoremap ; :
vnoremap < <gv
vnoremap > >gv
xnoremap D :m '>+1gv=gv
nnoremap H :bprevious
nnoremap L :bnext
xmap S <Plug>(operator-sandwich-add)
xnoremap U :m '<-2gv=gv
nnoremap U :syntax sync fromstart:redraw!
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap ` :Dispatch
onoremap ak :normal vikV
xnoremap ar a[
onoremap a& :normal va&
xnoremap a& GoggV
onoremap a# :normal va#
xnoremap a# :normal! F#vf#
onoremap a- :normal va-
xnoremap a- :normal! F-vf-
onoremap a+ :normal va+
xnoremap a+ :normal! F+vf+
onoremap a* :normal va*
xnoremap a* :normal! F*vf*
onoremap a\ :normal va\
xnoremap a\ :normal! F\vf\
onoremap a/ :normal va/
xnoremap a/ :normal! F/vf/
onoremap a| :normal va|
xnoremap a| :normal! F|vf|
onoremap a; :normal va;
xnoremap a; :normal! F;vf;
onoremap a, :normal va,
xnoremap a, :normal! F,vf,
onoremap a: :normal va:
xnoremap a: :normal! F:vf:
onoremap a. :normal va.
xnoremap a. :normal! F.vf.
onoremap a_ :normal va_
xnoremap a_ :normal! F_vf_
xmap a% <Plug>(MatchitVisualTextObject)
nmap cr <Plug>(abolish-coerce-word)
nmap css <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
nmap cs <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
nmap dss <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
nmap ds <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap gV `[v`]
vnoremap gk k
vnoremap gj j
nnoremap gk k
nnoremap gj j
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap gzr :Repl
nmap ga <Plug>(LiveEasyAlign)
xmap ga <Plug>(LiveEasyAlign)
onoremap ik :normal vik
xnoremap ik `]o`[
onoremap in :normal vin
xnoremap ir i[
onoremap i& :normal vi&
xnoremap i& :let z = @/|1;/^./kzG??:let @/ = zV'z
onoremap i# :normal vi#
xnoremap i# :normal! T#vt#
onoremap i- :normal vi-
xnoremap i- :normal! T-vt-
onoremap i+ :normal vi+
xnoremap i+ :normal! T+vt+
onoremap i* :normal vi*
xnoremap i* :normal! T*vt*
onoremap i\ :normal vi\
xnoremap i\ :normal! T\vt\
onoremap i/ :normal vi/
xnoremap i/ :normal! T/vt/
onoremap i| :normal vi|
xnoremap i| :normal! T|vt|
onoremap i; :normal vi;
xnoremap i; :normal! T;vt;
onoremap i, :normal vi,
xnoremap i, :normal! T,vt,
onoremap i: :normal vi:
xnoremap i: :normal! T:vt:
onoremap i. :normal vi.
xnoremap i. :normal! T.vt.
onoremap i_ :normal vi_
xnoremap i_ :normal! T_vt_
vnoremap j gj
nnoremap j gj
vnoremap k gk
nnoremap k gk
nnoremap q: <Nop>
onoremap u :normal Vu``
vnoremap u :silent! normal! ggV``
nmap u <Plug>(RepeatUndo)
nmap ys <Plug>(operator-sandwich-add)
nnoremap zs :exe "set foldlevel=".foldlevel(line('.'))
nnoremap zn :set foldlevel=
nnoremap zh mzzt10`z
nnoremap <Plug>(-fzf-:) :
nnoremap <Plug>(-fzf-/) /
nnoremap <Plug>(-fzf-vim-do) :execute g:__fzf_command
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
xnoremap <silent> <expr> <Plug>(textobj-sandwich-filetype-tex-marks-a) textobj#sandwich#auto('x', 'a', {'synchro': 0}, b:sandwich_tex_marks_recipes)
xnoremap <silent> <expr> <Plug>(textobj-sandwich-filetype-tex-marks-i) textobj#sandwich#auto('x', 'i', {'synchro': 0}, b:sandwich_tex_marks_recipes)
nnoremap <Plug>LfSplit :LF %:p split
nnoremap <Plug>LfEdit :LF %:p edit
nmap <PageUp> <Plug>(SmoothieBackwards)
nmap <S-Up> <Plug>(SmoothieBackwards)
nmap <C-B> <Plug>(SmoothieBackwards)
nmap <PageDown> <Plug>(SmoothieForwards)
nmap <S-Down> <Plug>(SmoothieForwards)
nmap <C-F> <Plug>(SmoothieForwards)
nmap <C-U> <Plug>(SmoothieUpwards)
nmap <C-D> <Plug>(SmoothieDownwards)
nnoremap <silent> <Plug>(SmoothieBackwards) :call smoothie#backwards() 
nnoremap <silent> <Plug>(SmoothieForwards) :call smoothie#forwards()  
nnoremap <silent> <Plug>(SmoothieUpwards) :call smoothie#upwards()   
nnoremap <silent> <Plug>(SmoothieDownwards) :call smoothie#downwards() 
xnoremap <silent> <Plug>(peekaboo) :call peekaboo#aboo()
nnoremap <silent> <Plug>(peekaboo) :call peekaboo#aboo()
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
snoremap <expr> <Plug>(doge-comment-jump-backward) doge#comment#jump("backward")
snoremap <expr> <Plug>(doge-comment-jump-forward) doge#comment#jump("forward")
nnoremap <expr> <Plug>(doge-comment-jump-backward) doge#comment#jump("backward")
nnoremap <expr> <Plug>(doge-comment-jump-forward) doge#comment#jump("forward")
nnoremap <Plug>(doge-generate) :call doge#generate(v:count)
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
noremap <silent> <Plug>(StopHL) :nohlsearch
nnoremap <silent> <Plug>(qf_next_file) : call qf#filegroup#NextFile()
nnoremap <silent> <Plug>(qf_previous_file) : call qf#filegroup#PreviousFile()
nnoremap <silent> <Plug>(qf_newer) : call qf#history#Newer()
nnoremap <silent> <Plug>(qf_older) : call qf#history#Older()
nnoremap <silent> <expr> <Plug>(qf_qf_switch) &filetype ==# 'qf' ? 'p' : 'b'
nnoremap <silent> <Plug>(qf_loc_toggle_stay) : call qf#toggle#ToggleLocWindow(1)
nnoremap <silent> <Plug>(qf_loc_toggle) : call qf#toggle#ToggleLocWindow(0)
nnoremap <silent> <Plug>(qf_qf_toggle_stay) : call qf#toggle#ToggleQfWindow(1)
nnoremap <silent> <Plug>(qf_qf_toggle) : call qf#toggle#ToggleQfWindow(0)
nnoremap <silent> <Plug>(qf_loc_next) : call qf#wrap#WrapCommand('down', 'l')
nnoremap <silent> <Plug>(qf_loc_previous) : call qf#wrap#WrapCommand('up', 'l')
nnoremap <silent> <Plug>(qf_qf_next) : call qf#wrap#WrapCommand('down', 'c')
nnoremap <silent> <Plug>(qf_qf_previous) : call qf#wrap#WrapCommand('up', 'c')
nmap <silent> <expr> <Plug>QfSwitch &filetype ==# 'qf' ? 'p' : 'b'
nmap <silent> <Plug>QfLtoggle <Plug>(qf_loc_toggle)
nmap <silent> <Plug>QfCtoggle <Plug>(qf_qf_toggle)
nmap <silent> <Plug>QfLnext <Plug>(qf_loc_next)
nmap <silent> <Plug>QfLprevious <Plug>(qf_loc_previous)
nmap <silent> <Plug>QfCnext <Plug>(qf_qf_next)
nmap <silent> <Plug>QfCprevious <Plug>(qf_qf_previous)
noremap <Plug>(sandwich-nop) <Nop>
xnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-a) textobj#sandwich#query('x', 'a', {}, [])
onoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-a) textobj#sandwich#query('o', 'a', {}, [])
nnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-a) textobj#sandwich#query('n', 'a', {}, [])
xnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-i) textobj#sandwich#query('x', 'i', {}, [])
onoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-i) textobj#sandwich#query('o', 'i', {}, [])
nnoremap <silent> <expr> <Plug>(textobj-sandwich-literal-query-i) textobj#sandwich#query('n', 'i', {}, [])
xnoremap <silent> <expr> <Plug>(textobj-sandwich-query-a) textobj#sandwich#query('x', 'a')
onoremap <silent> <expr> <Plug>(textobj-sandwich-query-a) textobj#sandwich#query('o', 'a')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-query-a) textobj#sandwich#query('n', 'a')
xnoremap <silent> <expr> <Plug>(textobj-sandwich-query-i) textobj#sandwich#query('x', 'i')
onoremap <silent> <expr> <Plug>(textobj-sandwich-query-i) textobj#sandwich#query('o', 'i')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-query-i) textobj#sandwich#query('n', 'i')
xnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-a) textobj#sandwich#auto('x', 'a')
onoremap <silent> <expr> <Plug>(textobj-sandwich-auto-a) textobj#sandwich#auto('o', 'a')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-a) textobj#sandwich#auto('n', 'a')
xnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-i) textobj#sandwich#auto('x', 'i')
onoremap <silent> <expr> <Plug>(textobj-sandwich-auto-i) textobj#sandwich#auto('o', 'i')
nnoremap <silent> <expr> <Plug>(textobj-sandwich-auto-i) textobj#sandwich#auto('n', 'i')
xnoremap <silent> <Plug>(textobj-sandwich-tag-a) :call sandwich#magicchar#t#at()
xnoremap <silent> <Plug>(textobj-sandwich-tag-i) :call sandwich#magicchar#t#it()
onoremap <silent> <Plug>(textobj-sandwich-tag-a) :call sandwich#magicchar#t#at()
onoremap <silent> <Plug>(textobj-sandwich-tag-i) :call sandwich#magicchar#t#it()
xnoremap <silent> <Plug>(textobj-sandwich-tagname-a) :call sandwich#magicchar#t#a()
xnoremap <silent> <Plug>(textobj-sandwich-tagname-i) :call sandwich#magicchar#t#i()
onoremap <silent> <Plug>(textobj-sandwich-tagname-a) :call sandwich#magicchar#t#a()
onoremap <silent> <Plug>(textobj-sandwich-tagname-i) :call sandwich#magicchar#t#i()
xnoremap <silent> <Plug>(textobj-sandwich-function-a) :call sandwich#magicchar#f#a()
xnoremap <silent> <Plug>(textobj-sandwich-function-ap) :call sandwich#magicchar#f#ap()
onoremap <silent> <Plug>(textobj-sandwich-function-a) :call sandwich#magicchar#f#a()
onoremap <silent> <Plug>(textobj-sandwich-function-ap) :call sandwich#magicchar#f#ap()
xnoremap <silent> <Plug>(textobj-sandwich-function-i) :call sandwich#magicchar#f#i()
xnoremap <silent> <Plug>(textobj-sandwich-function-ip) :call sandwich#magicchar#f#ip()
onoremap <silent> <Plug>(textobj-sandwich-function-i) :call sandwich#magicchar#f#i()
onoremap <silent> <Plug>(textobj-sandwich-function-ip) :call sandwich#magicchar#f#ip()
nnoremap <Plug>(sandwich-CTRL-v) 
nnoremap <Plug>(sandwich-V) V
nnoremap <Plug>(sandwich-v) v
nnoremap <Plug>(sandwich-O) O
nnoremap <Plug>(sandwich-o) o
nnoremap <Plug>(sandwich-i) i
nnoremap <Plug>(operator-sandwich-gv) gv
noremap <Plug>(operator-sandwich-g@) g@
noremap <silent> <Plug>(operator-sandwich-replace-visualrepeat) :call operator#sandwich#visualrepeat('replace')
noremap <silent> <Plug>(operator-sandwich-delete-visualrepeat) :call operator#sandwich#visualrepeat('delete')
noremap <silent> <Plug>(operator-sandwich-add-visualrepeat) :call operator#sandwich#visualrepeat('add')
nnoremap <silent> <expr> <Plug>(operator-sandwich-dot) operator#sandwich#dot()
nnoremap <silent> <expr> <Plug>(operator-sandwich-predot) operator#sandwich#predot()
onoremap <silent> <expr> <Plug>(operator-sandwich-squash-count) operator#sandwich#squash_count()
onoremap <silent> <expr> <Plug>(operator-sandwich-release-count) operator#sandwich#release_count()
onoremap <silent> <expr> <Plug>(operator-sandwich-synchro-count) operator#sandwich#synchro_count()
xnoremap <silent> <Plug>(operator-sandwich-replace-query1st) :call operator#sandwich#query1st('replace', 'x')
nnoremap <silent> <Plug>(operator-sandwich-replace-query1st) :call operator#sandwich#query1st('replace', 'n')
xnoremap <silent> <Plug>(operator-sandwich-add-query1st) :call operator#sandwich#query1st('add', 'x')
nnoremap <silent> <Plug>(operator-sandwich-add-query1st) :call operator#sandwich#query1st('add', 'n')
xnoremap <silent> <Plug>(operator-sandwich-replace-pre) :call operator#sandwich#prerequisite('replace', 'x')
nnoremap <silent> <Plug>(operator-sandwich-replace-pre) :call operator#sandwich#prerequisite('replace', 'n')
xnoremap <silent> <Plug>(operator-sandwich-delete-pre) :call operator#sandwich#prerequisite('delete', 'x')
nnoremap <silent> <Plug>(operator-sandwich-delete-pre) :call operator#sandwich#prerequisite('delete', 'n')
xnoremap <silent> <Plug>(operator-sandwich-add-pre) :call operator#sandwich#prerequisite('add', 'x')
nnoremap <silent> <Plug>(operator-sandwich-add-pre) :call operator#sandwich#prerequisite('add', 'n')
omap <silent> <Plug>(operator-sandwich-replace) <Plug>(operator-sandwich-g@)
xmap <silent> <Plug>(operator-sandwich-replace) <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>(operator-sandwich-replace) <Plug>(operator-sandwich-replace-pre)<Plug>(operator-sandwich-g@)
omap <silent> <Plug>(operator-sandwich-delete) <Plug>(operator-sandwich-g@)
xmap <silent> <Plug>(operator-sandwich-delete) <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>(operator-sandwich-delete) <Plug>(operator-sandwich-delete-pre)<Plug>(operator-sandwich-g@)
omap <silent> <Plug>(operator-sandwich-add) <Plug>(operator-sandwich-g@)
xmap <silent> <Plug>(operator-sandwich-add) <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-gv)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>(operator-sandwich-add) <Plug>(operator-sandwich-add-pre)<Plug>(operator-sandwich-g@)
nmap <silent> <Plug>CommentaryUndo :echoerr "Change your <Plug>CommentaryUndo map to <Plug>Commentary<Plug>Commentary"
nnoremap <Plug>ToggleNumber :call toggle_number#ToggleNumber()
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nnoremap <Plug>DeleteHiddenBuffers :DeleteHiddenBuffers
nnoremap <C-W>Z :tab split
nnoremap <C-H> >
nnoremap <C-J> -
nnoremap <C-K> +
nnoremap <C-C> :tabclose
nnoremap <C-T> :tabnew
tnoremap <C-W>; :
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nmap <C-P> <Plug>SchemerSynstack
map <C-L> <Plug>Unicoder
nmap <C-R> <Plug>(RepeatRedo)
nnoremap <silent> <Plug>(RepeatRedo) :call repeat#wrap("\<C-R>",v:count)
nnoremap <silent> <Plug>(RepeatUndoLine) :call repeat#wrap('U',v:count)
nnoremap <silent> <Plug>(RepeatUndo) :call repeat#wrap('u',v:count)
nnoremap <silent> <Plug>(RepeatDot) :exe repeat#run(v:count)
onoremap <SNR>18_gul g_
onoremap <SNR>18_line :normal! ^vg_
xmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
inoremap <silent> 	 =UltiSnips#ExpandSnippetOrJump()
inoremap  :call unicoder#start(1)
imap  <Plug>DiscretionaryEnd
cnoremap <expr>  traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_pfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cfile()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cWORD()\" : "\\\"
cnoremap <expr>  traces#check_b() ? "\\=traces#get_cword()\" : "\\\"
cnoremap <expr>  traces#check_b() ? traces#get_pfile() : "\\"
cnoremap <expr>  traces#check_b() ? traces#get_cfile() : "\\"
cnoremap <expr>  traces#check_b() ? traces#get_cWORD() : "\\"
cnoremap <expr>  traces#check_b() ? traces#get_cword() : "\\"
inoremap <expr> s &spell ? "u[s1z=`]au" : ""
imap  <Plug>RelativelyCompleteFile
inoremap  :w
iabbr ie i.e.
iabbr eg e.g.
cnoreabbr <expr> lgrep (getcmdtype() ==# ':' && getcmdline() ==# 'lgrep') ? 'LGrep' : 'lgrep'
cnoreabbr <expr> grep (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep'  : 'grep'
cnoreabbr tn terminal ++close joplin
cnoreabbr tf terminal ++close lf
cnoreabbr tm terminal ++close man
cnoreabbr wt terminal ++close
cnoreabbr tt tab terminal
cnoreabbr gitr system("git root")
cnoreabbr hg helpgrep
cnoreabbr sudow w !sudo tee > /dev/null %
cnoreabbr lset setl
cnoreabbr Colors XtermColorTable
cnoreabbr E Explore
cabbr setf Setf
cabbr USE UltiSnipsEdit
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set belloff=showmatch,esc,shell,wildmode,backspace
set binary
set complete=.,w,b,u,t,i,kspell
set completefunc=ultisnips_complete#ListSnippets
set completeopt=menu,menuone,preview
set copyindent
set define=
set dictionary=~/.vim/words/dict/global/custom.txt,~/.vim/words/dict/global/3of6all.txt,/usr/share/dict/words
set errorfile=~/Documents/School/honours-project/report/src/build/report.blg
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set foldlevelstart=5
set grepprg=ag\ --vimgrep
set helplang=en
set hidden
set hlsearch
set ignorecase
set include=
set incsearch
set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=,@-@
set laststatus=2
set lazyredraw
set matchtime=2
set mouse=a
set nrformats=hex,bin
set omnifunc=syntaxcomplete#Complete
set path=.,~/.dotfiles/vim/**,/usr/include,/usr/local/include,,
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/.vim/plugged/vader.vim
set runtimepath+=~/.vim/plugged/vim-commentary
set runtimepath+=~/.vim/plugged/sparkup
set runtimepath+=~/.vim/plugged/vim-endwise
set runtimepath+=~/.vim/plugged/vim-sandwich
set runtimepath+=~/.vim/plugged/vim-eunuch
set runtimepath+=~/.vim/plugged/vimwiki
set runtimepath+=~/.vim/plugged/vim-fugitive
set runtimepath+=~/.vim/plugged/vim-qf
set runtimepath+=~/.vim/plugged/vim-repeat
set runtimepath+=~/.vim/plugged/vim-cool
set runtimepath+=~/.vim/plugged/vimtex
set runtimepath+=~/.vim/plugged/ultisnips
set runtimepath+=~/.vim/plugged/vim-dokumentary
set runtimepath+=~/.fzf
set runtimepath+=~/.vim/plugged/fzf.vim
set runtimepath+=~/.vim/plugged/vim-abolish
set runtimepath+=~/.vim/plugged/wal.vim
set runtimepath+=~/.vim/plugged/vim-doge
set runtimepath+=~/.vim/plugged/vim-gitgutter
set runtimepath+=~/.vim/plugged/jumpy.vim
set runtimepath+=~/.vim/plugged/traces.vim
set runtimepath+=~/.vim/plugged/vim-nodejs-complete
set runtimepath+=~/.vim/plugged/html5.vim
set runtimepath+=~/.vim/plugged/OmniCppComplete
set runtimepath+=~/.vim/plugged/pythoncomplete
set runtimepath+=~/.vim/plugged/vim-peekaboo
set runtimepath+=~/.vim/plugged/latex-unicoder.vim
set runtimepath+=~/.vim/plugged/vim-smoothie
set runtimepath+=~/.vim/plugged/vim-apathy
set runtimepath+=~/.vim/plugged/vim-relatively-complete
set runtimepath+=~/.vim/plugged/vim-lf
set runtimepath+=~/.vim/plugged/vim-isotope
set runtimepath+=~/.vim/plugged/vim-medieval
set runtimepath+=/usr/local/share/vim/vimfiles
set runtimepath+=/usr/local/share/vim/vim82
set runtimepath+=/usr/local/share/vim/vim82/pack/dist/opt/matchit
set runtimepath+=/usr/local/share/vim/vimfiles/after
set runtimepath+=~/.vim/plugged/vim-sandwich/after
set runtimepath+=~/.vim/plugged/vim-qf/after
set runtimepath+=~/.vim/plugged/vimtex/after
set runtimepath+=~/.vim/plugged/ultisnips/after
set runtimepath+=~/.vim/plugged/jumpy.vim/after
set runtimepath+=~/.vim/plugged/vim-nodejs-complete/after
set runtimepath+=~/.vim/plugged/html5.vim/after
set runtimepath+=~/.vim/plugged/OmniCppComplete/after
set runtimepath+=~/.vim/plugged/vim-apathy/after
set runtimepath+=~/.vim/plugged/vim-medieval/after
set runtimepath+=~/.vim/after
set scrolloff=5
set sessionoptions=buffers,curdir,folds,globals,localoptions,options,resize,tabpages
set shiftround
set shiftwidth=2
set showcmd
set showmatch
set noshowmode
set smartcase
set smarttab
set softtabstop=2
set splitbelow
set splitright
set statusline=%#statuslinenormmode#%{(mode()=='n')?'\ \ N\ ':''}%#DiffAdd#%{(mode()=='i')?'\ \ I\ ':''}%#DiffAdd#%{(mode()=='t')?'\ \ T\ ':''}%#DiffDelete#%{(mode()=='r')?'\ \ R\ ':''}%#Todo#%{(mode()=='v')?'\ \ V\ ':''}%#Todo#%{(mode()=='s')?'\ \ S\ ':''}%#statuslinefile#\ %f\ %*%(\ %m%r%w\ %)%#error#%{statusline#StatuslineTabWarning()}%{statusline#StatuslineTrailingSpaceWarning()}%*%=%<\ %{statusline#StatuslineBuildCwd()}\ %#statuslinefile#%(\ %{&spell?'[spell]\ ':''}%)%(\ %{statusline#StatuslineVimtexCompiler()}%)\ %y\ [%{&expandtab?'spaces':'tabs'},%{statusline#StatuslineSpacesUsed()}]\ {%{statusline#StatuslineWrapCol()}}\ %#statuslinenormmode#\ [%{statusline#StatuslineFoldmethod()}]\ %l/%L\ \ %{strftime(\"%H:%M\")}\ 
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.sty,.cls,.log,.aux,.bbl,.out,.blg,.brf,.cb,.dvi,.fdb_latexmk,.fls,.idx,.ilg,.ind,.inx,.pdf,.synctex.gz,.toc
set suffixesadd=.vim
set noswapfile
set tabstop=4
set tags=./tags;~,tags,~/.tags,.git/tags;~
set termguicolors
set thesaurus=~/.vim/words/thesaurus/mthesaur.txt
set ttimeoutlen=0
set undodir=~/.vim/undo
set undofile
set updatetime=100
set whichwrap=b,s,<,>,h,l
set wildignore=**/__pycache__/**,**/venv/**,**/node_modules/**,**/dist/**,**/build/**,*.o,*.pyc,*.swp
set wildignorecase
set wildmenu
set wildmode=longest:list,full
set window=35
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let UltiSnipsExpandTrigger = "<tab>"
let UltiSnipsJumpForwardTrigger = "<tab>"
let UltiSnipsRemoveSelectModeMappings =  1 
let UltiSnipsEnableSnipMate =  1 
let UltiSnipsJumpBackwardTrigger = "<s-tab>"
let UltiSnipsListSnippets = "<c-tab>"
let UltiSnipsEditSplit = "vertical"
silent only
silent tabonly
cd ~/Documents/School/honours-project/report/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd report.tex
set lines=36 columns=270
edit introduction.tex
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <expr> <C-R> peekaboo#peek(1, "\",  0)
imap <buffer> <nowait> <silent> <F7> <Plug>(vimtex-cmd-create)
inoremap <buffer> <silent> <Plug>(vimtex-delim-close) =vimtex#delim#close()
inoremap <buffer> <silent> <Plug>(vimtex-cmd-create) =vimtex#cmd#create_insert()
nmap <buffer>  hp <Plug>(GitGutterPreviewHunk)
nmap <buffer>  hu <Plug>(GitGutterUndoHunk)
xmap <buffer>  hs <Plug>(GitGutterStageHunk)
nnoremap <buffer>  tt :VimtexTocToggle
xmap <buffer> <expr> " peekaboo#peek(v:count1, '"',  1)
nmap <buffer> <expr> " peekaboo#peek(v:count1, '"',  0)
omap <buffer> <nowait> <silent> % <Plug>(vimtex-%)
xmap <buffer> <nowait> <silent> % <Plug>(vimtex-%)
nmap <buffer> <nowait> <silent> % <Plug>(vimtex-%)
nmap <buffer> <expr> @ peekaboo#peek(v:count1, '@', 0)
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
omap <buffer> <nowait> <silent> [* <Plug>(vimtex-[*)
omap <buffer> <nowait> <silent> [/ <Plug>(vimtex-[/)
xmap <buffer> <nowait> <silent> [* <Plug>(vimtex-[*)
xmap <buffer> <nowait> <silent> [/ <Plug>(vimtex-[/)
nmap <buffer> <nowait> <silent> [* <Plug>(vimtex-[*)
nmap <buffer> <nowait> <silent> [/ <Plug>(vimtex-[/)
omap <buffer> <nowait> <silent> [m <Plug>(vimtex-[m)
omap <buffer> <nowait> <silent> [M <Plug>(vimtex-[M)
xmap <buffer> <nowait> <silent> [m <Plug>(vimtex-[m)
xmap <buffer> <nowait> <silent> [M <Plug>(vimtex-[M)
nmap <buffer> <nowait> <silent> [m <Plug>(vimtex-[m)
nmap <buffer> <nowait> <silent> [M <Plug>(vimtex-[M)
onoremap <buffer> <silent> [[ :call jumpy#jump("\\v^\\s\*\\\\\%(\%(sub)\*section|chapter|part|appendix|\%(front|back|main)matter)>", "o", "prev")
omap <buffer> <nowait> <silent> [] <Plug>(vimtex-[])
xnoremap <buffer> <silent> [[ :call jumpy#jump("\\v^\\s\*\\\\\%(\%(sub)\*section|chapter|part|appendix|\%(front|back|main)matter)>", "x", "prev")
xmap <buffer> <nowait> <silent> [] <Plug>(vimtex-[])
nnoremap <buffer> <silent> [[ :call jumpy#jump("\\v^\\s\*\\\\\%(\%(sub)\*section|chapter|part|appendix|\%(front|back|main)matter)>", "n", "prev")
nmap <buffer> <nowait> <silent> [] <Plug>(vimtex-[])
nmap <buffer> <nowait> <silent> \lm <Plug>(vimtex-imaps-list)
nmap <buffer> <nowait> <silent> \lv <Plug>(vimtex-view)
nmap <buffer> <nowait> <silent> \lT <Plug>(vimtex-toc-toggle)
nmap <buffer> <nowait> <silent> \lt <Plug>(vimtex-toc-open)
nmap <buffer> <nowait> <silent> \lG <Plug>(vimtex-status-all)
nmap <buffer> <nowait> <silent> \lg <Plug>(vimtex-status)
nmap <buffer> <nowait> <silent> \lC <Plug>(vimtex-clean-full)
nmap <buffer> <nowait> <silent> \lc <Plug>(vimtex-clean)
nmap <buffer> <nowait> <silent> \le <Plug>(vimtex-errors)
nmap <buffer> <nowait> <silent> \lK <Plug>(vimtex-stop-all)
nmap <buffer> <nowait> <silent> \lk <Plug>(vimtex-stop)
xmap <buffer> <nowait> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <nowait> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <nowait> <silent> \lo <Plug>(vimtex-compile-output)
nmap <buffer> <nowait> <silent> \ll <Plug>(vimtex-compile)
nmap <buffer> <nowait> <silent> \lq <Plug>(vimtex-log)
nmap <buffer> <nowait> <silent> \ls <Plug>(vimtex-toggle-main)
nmap <buffer> <nowait> <silent> \lX <Plug>(vimtex-reload-state)
nmap <buffer> <nowait> <silent> \lx <Plug>(vimtex-reload)
nmap <buffer> <nowait> <silent> \lI <Plug>(vimtex-info-full)
nmap <buffer> <nowait> <silent> \li <Plug>(vimtex-info)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
omap <buffer> <nowait> <silent> ]* <Plug>(vimtex-]*)
omap <buffer> <nowait> <silent> ]/ <Plug>(vimtex-]/)
xmap <buffer> <nowait> <silent> ]* <Plug>(vimtex-]*)
xmap <buffer> <nowait> <silent> ]/ <Plug>(vimtex-]/)
nmap <buffer> <nowait> <silent> ]* <Plug>(vimtex-]*)
nmap <buffer> <nowait> <silent> ]/ <Plug>(vimtex-]/)
omap <buffer> <nowait> <silent> ]m <Plug>(vimtex-]m)
omap <buffer> <nowait> <silent> ]M <Plug>(vimtex-]M)
xmap <buffer> <nowait> <silent> ]m <Plug>(vimtex-]m)
xmap <buffer> <nowait> <silent> ]M <Plug>(vimtex-]M)
nmap <buffer> <nowait> <silent> ]m <Plug>(vimtex-]m)
nmap <buffer> <nowait> <silent> ]M <Plug>(vimtex-]M)
omap <buffer> <nowait> <silent> ][ <Plug>(vimtex-][)
onoremap <buffer> <silent> ]] :call jumpy#jump("\\v^\\s\*\\\\\%(\%(sub)\*section|chapter|part|appendix|\%(front|back|main)matter)>", "o", "next")
xmap <buffer> <nowait> <silent> ][ <Plug>(vimtex-][)
xnoremap <buffer> <silent> ]] :call jumpy#jump("\\v^\\s\*\\\\\%(\%(sub)\*section|chapter|part|appendix|\%(front|back|main)matter)>", "x", "next")
nmap <buffer> <nowait> <silent> ][ <Plug>(vimtex-][)
nnoremap <buffer> <silent> ]] :call jumpy#jump("\\v^\\s\*\\\\\%(\%(sub)\*section|chapter|part|appendix|\%(front|back|main)matter)>", "n", "next")
omap <buffer> <nowait> <silent> ac <Plug>(vimtex-ac)
xmap <buffer> <nowait> <silent> ac <Plug>(vimtex-ac)
omap <buffer> <nowait> <silent> ae <Plug>(vimtex-ae)
xmap <buffer> <nowait> <silent> ae <Plug>(vimtex-ae)
omap <buffer> <nowait> <silent> am <Plug>(vimtex-am)
xmap <buffer> <nowait> <silent> am <Plug>(vimtex-am)
omap <buffer> <nowait> <silent> aP <Plug>(vimtex-aP)
xmap <buffer> <nowait> <silent> aP <Plug>(vimtex-aP)
omap <buffer> <nowait> <silent> a$ <Plug>(vimtex-a$)
xmap <buffer> <nowait> <silent> a$ <Plug>(vimtex-a$)
omap <buffer> <nowait> <silent> ad <Plug>(vimtex-ad)
xmap <buffer> <nowait> <silent> ad <Plug>(vimtex-ad)
nmap <buffer> <nowait> <silent> csd <Plug>(vimtex-delim-change-math)
nmap <buffer> <nowait> <silent> csc <Plug>(vimtex-cmd-change)
nmap <buffer> <nowait> <silent> cse <Plug>(vimtex-env-change)
nmap <buffer> <nowait> <silent> cs$ <Plug>(vimtex-env-change-math)
nmap <buffer> <nowait> <silent> dsd <Plug>(vimtex-delim-delete)
nmap <buffer> <nowait> <silent> dsc <Plug>(vimtex-cmd-delete)
nmap <buffer> <nowait> <silent> dse <Plug>(vimtex-env-delete)
nmap <buffer> <nowait> <silent> ds$ <Plug>(vimtex-env-delete-math)
omap <buffer> <nowait> <silent> ic <Plug>(vimtex-ic)
xmap <buffer> <nowait> <silent> ic <Plug>(vimtex-ic)
omap <buffer> <nowait> <silent> ie <Plug>(vimtex-ie)
xmap <buffer> <nowait> <silent> ie <Plug>(vimtex-ie)
omap <buffer> <nowait> <silent> im <Plug>(vimtex-im)
xmap <buffer> <nowait> <silent> im <Plug>(vimtex-im)
omap <buffer> <nowait> <silent> iP <Plug>(vimtex-iP)
xmap <buffer> <nowait> <silent> iP <Plug>(vimtex-iP)
omap <buffer> <nowait> <silent> i$ <Plug>(vimtex-i$)
xmap <buffer> <nowait> <silent> i$ <Plug>(vimtex-i$)
omap <buffer> <nowait> <silent> id <Plug>(vimtex-id)
xmap <buffer> <nowait> <silent> id <Plug>(vimtex-id)
xmap <buffer> <nowait> <silent> tsD <Plug>(vimtex-delim-toggle-modifier-reverse)
nmap <buffer> <nowait> <silent> tsD <Plug>(vimtex-delim-toggle-modifier-reverse)
xmap <buffer> <nowait> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <nowait> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
xmap <buffer> <nowait> <silent> tsf <Plug>(vimtex-cmd-toggle-frac)
nmap <buffer> <nowait> <silent> tsf <Plug>(vimtex-cmd-toggle-frac)
nmap <buffer> <nowait> <silent> tsc <Plug>(vimtex-cmd-toggle-star)
nmap <buffer> <nowait> <silent> tse <Plug>(vimtex-env-toggle-star)
xmap <buffer> <nowait> <silent> <F7> <Plug>(vimtex-cmd-create)
nmap <buffer> <nowait> <silent> <F7> <Plug>(vimtex-cmd-create)
nnoremap <buffer> <Plug>(vimtex-view) :call b:vimtex.viewer.view('')
nnoremap <buffer> <Plug>(vimtex-toc-toggle) :call b:vimtex.toc.toggle()
nnoremap <buffer> <Plug>(vimtex-toc-open) :call b:vimtex.toc.open()
onoremap <buffer> <silent> <Plug>(vimtex-am) :call vimtex#text_obj#items(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-im) :call vimtex#text_obj#items(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-am) :call vimtex#text_obj#items(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-im) :call vimtex#text_obj#items(1, 1)
onoremap <buffer> <silent> <Plug>(vimtex-aP) :call vimtex#text_obj#sections(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-iP) :call vimtex#text_obj#sections(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-aP) :call vimtex#text_obj#sections(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-iP) :call vimtex#text_obj#sections(1, 1)
onoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0, 0,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1, 0,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0, 1,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1, 1,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0, 0,'env_tex')
onoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1, 0,'env_tex')
xnoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0, 1,'env_tex')
xnoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1, 1,'env_tex')
onoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0, 0,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1, 0,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0, 1,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1, 1,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1, 1)
nnoremap <buffer> <Plug>(vimtex-reload-state) :VimtexReloadState
nnoremap <buffer> <Plug>(vimtex-toggle-main) :VimtexToggleMain
nnoremap <buffer> <Plug>(vimtex-errors) :call vimtex#qf#toggle()
xnoremap <buffer> <silent> <SNR>135_(vimtex-[*) :call vimtex#motion#comment(0,1,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-[/) :call vimtex#motion#comment(1,1,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-]*) :call vimtex#motion#comment(0,0,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-]/) :call vimtex#motion#comment(1,0,1)
nnoremap <buffer> <silent> <Plug>(vimtex-[*) :call vimtex#motion#comment(0,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-[/) :call vimtex#motion#comment(1,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]*) :call vimtex#motion#comment(0,0,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]/) :call vimtex#motion#comment(1,0,0)
xnoremap <buffer> <silent> <SNR>135_(vimtex-[M) :call vimtex#motion#environment(0,1,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-[m) :call vimtex#motion#environment(1,1,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-]M) :call vimtex#motion#environment(0,0,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-]m) :call vimtex#motion#environment(1,0,1)
nnoremap <buffer> <silent> <Plug>(vimtex-[M) :call vimtex#motion#environment(0,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-[m) :call vimtex#motion#environment(1,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]M) :call vimtex#motion#environment(0,0,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]m) :call vimtex#motion#environment(1,0,0)
xnoremap <buffer> <silent> <SNR>135_(vimtex-[[) :call vimtex#motion#section(0,1,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-[]) :call vimtex#motion#section(1,1,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-][) :call vimtex#motion#section(1,0,1)
xnoremap <buffer> <silent> <SNR>135_(vimtex-]]) :call vimtex#motion#section(0,0,1)
nnoremap <buffer> <silent> <Plug>(vimtex-[[) :call vimtex#motion#section(0,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-[]) :call vimtex#motion#section(1,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-][) :call vimtex#motion#section(1,0,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]]) :call vimtex#motion#section(0,0,0)
xnoremap <buffer> <silent> <SNR>135_(vimtex-%) :call vimtex#motion#find_matching_pair(1)
nnoremap <buffer> <silent> <Plug>(vimtex-%) :call vimtex#motion#find_matching_pair()
nnoremap <buffer> <SNR>135_(V) V
nnoremap <buffer> <SNR>135_(v) v
nnoremap <buffer> <Plug>(vimtex-reload) :VimtexReload
nnoremap <buffer> <Plug>(vimtex-log) :VimtexLog
nnoremap <buffer> <Plug>(vimtex-info-full) :VimtexInfo!
nnoremap <buffer> <Plug>(vimtex-info) :VimtexInfo
nnoremap <buffer> <Plug>(vimtex-imaps-list) :call vimtex#imaps#list()
nnoremap <buffer> <Plug>(vimtex-doc-package) :VimtexDocPackage
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier-reverse) :call vimtex#delim#toggle_modifier_visual({'dir': -1})
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier_visual()
nnoremap <buffer> <Plug>(vimtex-status-all) :call vimtex#compiler#status(1)
nnoremap <buffer> <Plug>(vimtex-status) :call vimtex#compiler#status(0)
nnoremap <buffer> <Plug>(vimtex-clean-full) :call vimtex#compiler#clean(1)
nnoremap <buffer> <Plug>(vimtex-clean) :call vimtex#compiler#clean(0)
nnoremap <buffer> <Plug>(vimtex-stop-all) :call vimtex#compiler#stop_all()
nnoremap <buffer> <Plug>(vimtex-stop) :call vimtex#compiler#stop()
nnoremap <buffer> <Plug>(vimtex-compile-output) :call vimtex#compiler#output()
xnoremap <buffer> <Plug>(vimtex-compile-selected) :call vimtex#compiler#compile_selected('visual')
nnoremap <buffer> <Plug>(vimtex-compile-selected) :set opfunc=vimtex#compiler#compile_selectedg@
nnoremap <buffer> <Plug>(vimtex-compile-ss) :call vimtex#compiler#compile_ss()
nnoremap <buffer> <Plug>(vimtex-compile) :call vimtex#compiler#compile()
xnoremap <buffer> <silent> <Plug>(vimtex-cmd-toggle-frac) :call vimtex#cmd#toggle_frac_visual()
xnoremap <buffer> <silent> <Plug>(vimtex-cmd-create) :call vimtex#cmd#create_visual()
imap <buffer> <expr>  peekaboo#peek(1, "\",  0)
inoremap <buffer> ! !u
inoremap <buffer> <nowait> <silent> <expr> #B vimtex#imaps#wrap_math("#B", vimtex#imaps#style_math("mathbb"))
inoremap <buffer> <nowait> <silent> <expr> #- vimtex#imaps#wrap_math("#-", vimtex#imaps#style_math("overline"))
inoremap <buffer> <nowait> <silent> <expr> #c vimtex#imaps#wrap_math("#c", vimtex#imaps#style_math("mathcal"))
inoremap <buffer> <nowait> <silent> <expr> #f vimtex#imaps#wrap_math("#f", vimtex#imaps#style_math("mathfrak"))
inoremap <buffer> <nowait> <silent> <expr> #b vimtex#imaps#wrap_math("#b", vimtex#imaps#style_math("mathbf"))
inoremap <buffer> <nowait> <silent> <expr> #/ vimtex#imaps#wrap_math("#/", vimtex#imaps#style_math("slashed"))
inoremap <buffer> , ,u
inoremap <buffer> - -u
inoremap <buffer> . .u
inoremap <buffer> : :u
inoremap <buffer> ; ;u
inoremap <buffer> ? ?u
imap <buffer> <nowait> <silent> ]] <Plug>(vimtex-delim-close)
inoremap <buffer> <nowait> <silent> <expr> `vr vimtex#imaps#wrap_math("`vr", '\varrho')
inoremap <buffer> <nowait> <silent> <expr> `vq vimtex#imaps#wrap_math("`vq", '\vartheta')
inoremap <buffer> <nowait> <silent> <expr> `vk vimtex#imaps#wrap_math("`vk", '\varkappa')
inoremap <buffer> <nowait> <silent> <expr> `vf vimtex#imaps#wrap_math("`vf", '\varphi')
inoremap <buffer> <nowait> <silent> <expr> `ve vimtex#imaps#wrap_math("`ve", '\varepsilon')
inoremap <buffer> <nowait> <silent> <expr> `Y vimtex#imaps#wrap_math("`Y", '\Psi')
inoremap <buffer> <nowait> <silent> <expr> `X vimtex#imaps#wrap_math("`X", '\Xi')
inoremap <buffer> <nowait> <silent> <expr> `W vimtex#imaps#wrap_math("`W", '\Omega')
inoremap <buffer> <nowait> <silent> <expr> `U vimtex#imaps#wrap_math("`U", '\Upsilon')
inoremap <buffer> <nowait> <silent> <expr> `S vimtex#imaps#wrap_math("`S", '\Sigma')
inoremap <buffer> <nowait> <silent> <expr> `Q vimtex#imaps#wrap_math("`Q", '\Theta')
inoremap <buffer> <nowait> <silent> <expr> `P vimtex#imaps#wrap_math("`P", '\Pi')
inoremap <buffer> <nowait> <silent> <expr> `L vimtex#imaps#wrap_math("`L", '\Lambda')
inoremap <buffer> <nowait> <silent> <expr> `F vimtex#imaps#wrap_math("`F", '\Phi')
inoremap <buffer> <nowait> <silent> <expr> `D vimtex#imaps#wrap_math("`D", '\Delta')
inoremap <buffer> <nowait> <silent> <expr> `G vimtex#imaps#wrap_math("`G", '\Gamma')
inoremap <buffer> <nowait> <silent> <expr> `x vimtex#imaps#wrap_math("`x", '\xi')
inoremap <buffer> <nowait> <silent> <expr> `z vimtex#imaps#wrap_math("`z", '\zeta')
inoremap <buffer> <nowait> <silent> <expr> `w vimtex#imaps#wrap_math("`w", '\omega')
inoremap <buffer> <nowait> <silent> <expr> `u vimtex#imaps#wrap_math("`u", '\upsilon')
inoremap <buffer> <nowait> <silent> <expr> `y vimtex#imaps#wrap_math("`y", '\psi')
inoremap <buffer> <nowait> <silent> <expr> `t vimtex#imaps#wrap_math("`t", '\tau')
inoremap <buffer> <nowait> <silent> <expr> `s vimtex#imaps#wrap_math("`s", '\sigma')
inoremap <buffer> <nowait> <silent> <expr> `r vimtex#imaps#wrap_math("`r", '\rho')
inoremap <buffer> <nowait> <silent> <expr> `q vimtex#imaps#wrap_math("`q", '\theta')
inoremap <buffer> <nowait> <silent> <expr> `p vimtex#imaps#wrap_math("`p", '\pi')
inoremap <buffer> <nowait> <silent> <expr> `n vimtex#imaps#wrap_math("`n", '\nu')
inoremap <buffer> <nowait> <silent> <expr> `m vimtex#imaps#wrap_math("`m", '\mu')
inoremap <buffer> <nowait> <silent> <expr> `l vimtex#imaps#wrap_math("`l", '\lambda')
inoremap <buffer> <nowait> <silent> <expr> `k vimtex#imaps#wrap_math("`k", '\kappa')
inoremap <buffer> <nowait> <silent> <expr> `i vimtex#imaps#wrap_math("`i", '\iota')
inoremap <buffer> <nowait> <silent> <expr> `h vimtex#imaps#wrap_math("`h", '\eta')
inoremap <buffer> <nowait> <silent> <expr> `g vimtex#imaps#wrap_math("`g", '\gamma')
inoremap <buffer> <nowait> <silent> <expr> `f vimtex#imaps#wrap_math("`f", '\phi')
inoremap <buffer> <nowait> <silent> <expr> `e vimtex#imaps#wrap_math("`e", '\epsilon')
inoremap <buffer> <nowait> <silent> <expr> `d vimtex#imaps#wrap_math("`d", '\delta')
inoremap <buffer> <nowait> <silent> <expr> `c vimtex#imaps#wrap_math("`c", '\chi')
inoremap <buffer> <nowait> <silent> <expr> `b vimtex#imaps#wrap_math("`b", '\beta')
inoremap <buffer> <nowait> <silent> <expr> `a vimtex#imaps#wrap_math("`a", '\alpha')
inoremap <buffer> <nowait> <silent> <expr> `jL vimtex#imaps#wrap_math("`jL", '\Rightarrow')
inoremap <buffer> <nowait> <silent> <expr> `jl vimtex#imaps#wrap_math("`jl", '\rightarrow')
inoremap <buffer> <nowait> <silent> <expr> `jH vimtex#imaps#wrap_math("`jH", '\Leftarrow')
inoremap <buffer> <nowait> <silent> <expr> `jh vimtex#imaps#wrap_math("`jh", '\leftarrow')
inoremap <buffer> <nowait> <silent> <expr> `jK vimtex#imaps#wrap_math("`jK", '\Uparrow')
inoremap <buffer> <nowait> <silent> <expr> `jk vimtex#imaps#wrap_math("`jk", '\uparrow')
inoremap <buffer> <nowait> <silent> <expr> `jJ vimtex#imaps#wrap_math("`jJ", '\Downarrow')
inoremap <buffer> <nowait> <silent> <expr> `jj vimtex#imaps#wrap_math("`jj", '\downarrow')
inoremap <buffer> <nowait> <silent> <expr> `E vimtex#imaps#wrap_math("`E", '\exists')
inoremap <buffer> <nowait> <silent> <expr> `A vimtex#imaps#wrap_math("`A", '\forall')
inoremap <buffer> <nowait> <silent> <expr> `) vimtex#imaps#wrap_math("`)", '\supset')
inoremap <buffer> <nowait> <silent> <expr> `( vimtex#imaps#wrap_math("`(", '\subset')
inoremap <buffer> <nowait> <silent> <expr> `] vimtex#imaps#wrap_math("`]", '\supseteq')
inoremap <buffer> <nowait> <silent> <expr> `[ vimtex#imaps#wrap_math("`[", '\subseteq')
inoremap <buffer> <nowait> <silent> <expr> `+ vimtex#imaps#wrap_math("`+", '\dagger')
inoremap <buffer> <nowait> <silent> <expr> `H vimtex#imaps#wrap_math("`H", '\hbar')
inoremap <buffer> <nowait> <silent> <expr> `> vimtex#imaps#wrap_math("`>", '\rangle')
inoremap <buffer> <nowait> <silent> <expr> `< vimtex#imaps#wrap_math("`<", '\langle')
inoremap <buffer> <nowait> <silent> <expr> `* vimtex#imaps#wrap_math("`*", '\times')
inoremap <buffer> <nowait> <silent> <expr> `. vimtex#imaps#wrap_math("`.", '\cdot')
inoremap <buffer> <nowait> <silent> <expr> `\ vimtex#imaps#wrap_math("`\\", '\setminus')
inoremap <buffer> <nowait> <silent> <expr> `= vimtex#imaps#wrap_math("`=", '\equiv')
inoremap <buffer> <nowait> <silent> <expr> `8 vimtex#imaps#wrap_math("`8", '\infty')
inoremap <buffer> <nowait> <silent> <expr> `6 vimtex#imaps#wrap_math("`6", '\partial')
inoremap <buffer> <nowait> <silent> <expr> `0 vimtex#imaps#wrap_math("`0", '\emptyset')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal binary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i,kspell
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=ultisnips_complete#ListSnippets
setlocal copyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=5
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qnlj
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=\\v^\\s*\\%\\s*!?\\s*[tT][eE][xX]\\s+[rR][oO][oO][tT]\\s*\\=\\s*\\zs.*\\ze\\s*$|\\v^\\s*\\zs%(\\v\\\\%(input|include|subfile|subfileinclude)\\s*\\{|\\v\\\\%(sub)?%(import|%(input|include)from)\\*?\\{[^\\}]*\\}\\{)\\zs[^\\}]*\\ze\\}?|\\v\\\\%(usepackage|RequirePackage)%(\\s*\\[[^]]*\\])?\\s*\\{\\zs[^}]*\\ze\\}
setlocal includeexpr=vimtex#include#expr()
setlocal indentexpr=VimtexIndentExpr()
setlocal indentkeys=!^F,o,O,(,),],},&,=item,=else,=fi,=rangle,=rbrace,=rvert,=rVert,=rfloor,=rceil,=urcorner
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,:
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=hex,bin
set number
setlocal number
set numberwidth=3
setlocal numberwidth=3
setlocal omnifunc=vimtex#complete#omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.sty,.tex,.cls
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal wrap
setlocal wrapmargin=0
let s:l = 4 - ((3 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0143|
tabnext 1
badd +26 report.tex
badd +0 introduction.tex
badd +132 references.bib
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
