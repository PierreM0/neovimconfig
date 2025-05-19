" Syntaxe pour Voxscape CLFN

if exists("b:current_syntax")
  finish
endif

" Commentaires
syntax match clfnComment "~.*$"
highlight link clfnComment Comment

" Mots-clés
syntax keyword clfnKeyword fn cl if else while for in break continue return local NULL TRUE FALSE
highlight link clfnKeyword Keyword

" Chaînes de caractères
syntax region clfnString start=+\"+ end=+\"+
syntax region clfnString start=+`+ end=+`+
highlight link clfnString String

" Fonctions
syntax match clfnFunction "\<fn\s\+[@a-zA-Z_][@a-zA-Z0-9_]*\>"
highlight link clfnFunction Function

" Appels de fonction
syntax match clfnFunctionCall "\<[@a-zA-Z_][@a-zA-Z0-9_]*\s*("
highlight link clfnFunctionCall Identifier

" Classes
syntax match clfnClass "\<cl\s\+[@a-zA-Z_][@a-zA-Z0-9_]*\>"
highlight link clfnClass Type

" Nombres
syntax match clfnNumber "\<\d\+\(\.\d\+\)\?\>"
highlight link clfnNumber Number

let b:current_syntax = "clfn"

