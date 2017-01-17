let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/eureka.digital/mark.42/test/todo.rails
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +26 Gemfile
badd +1 config/routes.rb
badd +10 db/migrate/20170117190642_devise_create_users.rb
badd +25 config/environments/development.rb
badd +1 app/assets/javascripts/application.js
badd +0 app/assets/stylesheets/application.css
badd +6 app/models/user.rb
badd +2 app/models/task.rb
badd +2 app/models/pomodoro.rb
badd +0 app/models/project.rb
badd +0 app/models/context.rb
badd +9 db/migrate/20170117201919_create_projects.rb
badd +9 db/migrate/20170117201945_create_contexts.rb
badd +0 db/migrate/20170117203127_create_tasks.rb
badd +0 db/migrate/20170117203345_create_pomodoros.rb
badd +1 app/models/pomodoro_log.rb
badd +0 db/migrate/20170117204809_create_pomodoro_logs.rb
argglobal
silent! argdel *
set stal=2
edit Gemfile
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
wincmd =
argglobal
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 59 - ((57 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 05|
wincmd w
argglobal
edit config/environments/development.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
let s:l = 23 - ((22 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 06|
wincmd w
argglobal
edit config/routes.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 5 - ((4 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 03|
wincmd w
wincmd =
tabedit app/assets/javascripts/application.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
wincmd =
argglobal
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 17 - ((16 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 035|
wincmd w
argglobal
edit app/assets/stylesheets/application.css
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 15 - ((14 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 035|
wincmd w
wincmd =
tabedit db/migrate/20170117190642_devise_create_users.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
wincmd =
argglobal
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
let s:l = 36 - ((26 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 014|
wincmd w
argglobal
edit db/migrate/20170117204809_create_pomodoro_logs.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
let s:l = 7 - ((6 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
wincmd w
argglobal
edit db/migrate/20170117201919_create_projects.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
let s:l = 10 - ((9 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
wincmd w
argglobal
edit db/migrate/20170117203127_create_tasks.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
let s:l = 20 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 028|
wincmd w
argglobal
edit db/migrate/20170117201945_create_contexts.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
let s:l = 9 - ((8 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 03|
wincmd w
argglobal
edit db/migrate/20170117203345_create_pomodoros.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
let s:l = 6 - ((5 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 016|
wincmd w
wincmd =
tabedit app/models/user.rb
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
wincmd =
argglobal
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
4
normal! zo
4
normal! zo
let s:l = 11 - ((10 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 03|
wincmd w
argglobal
edit app/models/pomodoro_log.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
let s:l = 3 - ((2 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 012|
wincmd w
argglobal
edit app/models/task.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 03|
wincmd w
argglobal
edit app/models/project.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 032|
wincmd w
argglobal
edit app/models/pomodoro.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
normal! zo
let s:l = 3 - ((2 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 025|
wincmd w
argglobal
edit app/models/context.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 3 - ((2 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 032|
wincmd w
wincmd =
tabnext 4
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
let g:this_obsession_status = 2
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
