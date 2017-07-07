let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/eureka.digital/mark.42/test/todo.rails
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 Gemfile
badd +6 config/routes.rb
badd +1 db/migrate/20170117190642_devise_create_users.rb
badd +25 config/environments/development.rb
badd +16 app/assets/stylesheets/application.css
badd +1 app/models/user.rb
badd +2 app/models/task.rb
badd +2 app/models/pomodoro.rb
badd +1 app/models/project.rb
badd +1 app/models/context.rb
badd +9 db/migrate/20170117201919_create_projects.rb
badd +9 db/migrate/20170117201945_create_contexts.rb
badd +1 db/migrate/20170117203127_create_tasks.rb
badd +1 db/migrate/20170117203345_create_pomodoros.rb
badd +1 app/models/pomodoro_log.rb
badd +1 db/migrate/20170117204809_create_pomodoro_logs.rb
badd +1 app/controllers/tasks_controller.rb
badd +22 app/views/users/registrations/new.html.erb
badd +1 config/initializers/devise.rb
badd +20 app/views/tasks/new.html.erb
badd +25 app/views/devise/shared/_links.html.erb
badd +28 app/views/shared/_nav_menu.html.erb
badd +8 app/views/projects/new.html.erb
badd +1 app/controllers/shared_controller.rb
badd +22 app/assets/stylesheets/main.css
badd +21 app/views/projects/index.html.erb
badd +4 app/controllers/contexts_controller.rb
badd +14 app/views/contexts/index.html.erb
badd +8 app/views/contexts/new.html.erb
badd +4 app/views/contexts/edit.html.erb
badd +4 app/assets/stylesheets/tasks.scss
badd +1 app/controllers/projects_controller.rb
badd +1 app/views/tasks/edit.html.erb
badd +1 app/views/pomodoros/index.html.erb
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
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe '3resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
exe '4resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 4resize ' . ((&columns * 90 + 137) / 274)
argglobal
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 029|
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
let s:l = 27 - ((25 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 05|
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
let s:l = 2 - ((1 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 03|
wincmd w
argglobal
edit config/initializers/devise.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 223 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
223
normal! 028|
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 91 + 137) / 274)
exe '3resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 3resize ' . ((&columns * 90 + 137) / 274)
exe '4resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 4resize ' . ((&columns * 90 + 137) / 274)
tabedit app/controllers/tasks_controller.rb
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
set nosplitbelow
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
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
13
normal! zo
let s:l = 43 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 0
wincmd w
argglobal
edit app/controllers/projects_controller.rb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 33 - ((22 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 031|
wincmd w
argglobal
edit app/views/tasks/new.html.erb
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
let s:l = 20 - ((19 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 09|
wincmd w
argglobal
edit app/views/tasks/new.html.erb
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
let s:l = 20 - ((19 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 09|
wincmd w
argglobal
edit app/views/projects/index.html.erb
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 027|
wincmd w
5wincmd w
wincmd =
tabedit app/views/tasks/edit.html.erb
set splitbelow splitright
set nosplitbelow
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=FoldLevel(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 13 - ((12 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
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
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
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
let s:l = 16 - ((9 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
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
let s:l = 2 - ((1 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 012|
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
let s:l = 10 - ((9 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 03|
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
let s:l = 7 - ((6 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 017|
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
let s:l = 9 - ((8 * winheight(0) + 17) / 35)
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
let s:l = 6 - ((5 * winheight(0) + 17) / 35)
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
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
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
let s:l = 4 - ((3 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
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
let s:l = 3 - ((2 * winheight(0) + 17) / 35)
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
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
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
let s:l = 3 - ((2 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 011|
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
1
normal! zo
let s:l = 3 - ((2 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 013|
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
let s:l = 3 - ((2 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 010|
wincmd w
wincmd =
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
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
