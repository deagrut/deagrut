" durgeta
" 2020-11-17
"
"------------------------------------------------------------

scriptencoding utf-8
set encoding=utf-8

set nocompatible

filetype on			" Détection du type de fichier
filetype indent on	" Auto-Indentation en fonction du type de fichier

set number			" Numérotation des lignes

set background=dark	" Couleurs adaptées pour fond noir
set linebreak		" Affichage saut de ligne au dernier mot au lieu du dernier caractère (requier Wrap lines, actif par défaut)
set novisualbell		" Clignotement d'écran au lieu du "beep"
set showmatch		" Surligne le mots recherché dans le texte
set hlsearch		" Surligne tous les résultats de la recherche
set mouse=a			" Activation de la souris, dans tous les modes (Appuyer sur "shift" pour faire des sélections dans le terminal)


"------------------------------------------------------------
" Coloration syntaxique
syntax on			" Coloration syntaxique

:noremap <silent> <C-S-F7> :if exists("g:syntax_on")
\		<Bar> syntax off
\	<Bar> else
\		<Bar> syntax enable
\	<Bar> endif <CR>

:inoremap <silent> <C-S-F7> <C-o>:if exists("g:syntax_on")
\<Bar> syntax off
\<Bar> else
\<Bar> syntax enable
\<Bar> endif <CR>


"------------------------------------------------------------
" Indentation
set tabstop=4		" Affichage tabulation
set softtabstop=4	" Tabulation
set shiftwidth=4	" Auto-Indentation
set noexpandtab		" Ne Pas Remplacer les tabulation par des espaces
set nosmartindent		" Améliore l'auto-indentation, notamment en collant du texte déjà indenté
set smarttab		" Améliore l'auto-indentation, Gestion des espaces en début de ligne pour l'autoindentation
"set paste			" Maintien de l'indentation telle qu'elle est dans le presse-papier
set autoindent		" Auto-Indentation des nouvelles lignes
set cindent			" Auto-Indentation type langage C


"------------------------------------------------------------
" Conserver l'indentation des lignes vides
inoremap <CR> <CR><space><BS>
nnoremap o o<space><BS>
nnoremap O O<space><BS>


" Fermeture et Saut de ligne
inoremap {<CR> {<CR>}<Esc>ko<space><BS>
inoremap [<CR> [<CR>]<Esc>ko<space><BS>
inoremap (<CR> (<CR>)<Esc>ko<space><BS>
inoremap <<CR> <<CR>><Esc>ko<space><BS>


" Fermeture sur une ligne
inoremap (<space> (<space><space>)<Esc>hi
inoremap (( ()<Esc>i

inoremap {<space> {<space><space>}<Esc>hi
inoremap {{ {}<Esc>i

inoremap [<space> [<space><space>]<Esc>hi
inoremap [[ []<Esc>i


" Affichage des caractères non affichables
:noremap <silent> <C-S-F8> :set list!<CR>
:inoremap <silent> <C-S-F8> <C-o>:set list!<CR>

set nolist
if has("patch-7.4.710")
	set listchars=eol:¶,extends:>,precedes:<,space:·,tab:»~,trail:~
else
	set listchars=eol:¶,extends:>,precedes:<,tab:»~,trail:~
endif


" Coloration pour "eol", "extends", "precedes"
highlight NonText		ctermfg=1 guifg=grey
" Coloration pour "nbsp", "space", "tab", "trail"
highlight SpecialKey	ctermfg=1 guifg=grey


" Effacer le surlignage des mots recherchés
nnoremap <unique> <silent> ,<space> :nohlsearch<CR>
