" Vim syntax file
" Language: DML (Declarative Machine Learning)
" Maintainer: Nakul Jindal
" Based off http://opy.me/vim/syntax/r.vim


if exists("b:current_syntax")
      finish
endif

syn match dmlSingleLineComment "#.*$"
syn region dmlMultiLineComment  start=+\/\*+ end=+\*\/+

syn match dmlCastFunction /\<as\.scalar\>/
syn match dmlCastFunction /\<as\.matrix\>/
syn match dmlCastFunction /\<as\.double\>/
syn match dmlCastFunction /\<as\.integer\>/
syn match dmlCastFunction /\<as\.logical\>/
syn match dmlCastFunction /\<castAsScalar\>/
syn match dmlCastFunction /\<castAsMatrix\>/
syn match dmlCastFunction /\<castAsDouble\>/
syn match dmlCastFunction /\<castAsInteger\>/
syn match dmlCastFunction /\<castAsLogical\>/
syn match dmlKeyword      /\<index\.return\>/
syn match dmlKeyword      /\<lower\.tail\>/
syn keyword dmlType integer string String boolean Boolean double Double Integer int Int
syn keyword dmlStorageClass frame matrix scalar object Frame Matrix Scalar Object
syn keyword dmlKeyword function return ifdef setcwd as source externalFunction implemented in
syn keyword dmlBuiltin append cbind matrix min  max min  max nrow  ncol  length prod rand rbind removeEmpty replace seq sum pmin  pmax rowIndexMax rowIndexMin ppred mean avg moment colSums  colMeans  colMaxs  colMins cov table cdf pnorm pexp pchisq pf pt icdf qnorm qexp qchisq qf qt aggregate interQuartileMean quantile median rowSums  rowMeans  rowMaxs  rowMins cumsum cumprod cummin cummax sample outer exp log abs sqrt round floor ceil sin cos tan asin acos atan diag eigen lu qr solve t trace append print stop order
syn keyword dmlConditional if else
syn keyword dmlRepeat for parfor while

syn keyword dmlParforParams check par mode taskpartitioner tasksize datapartitioner resultmerge opt LOCAL REMOTE_MR FIXED NAIVE STATIC FACTORING FACTORING_CMIN FACTORING_CMAX NONE LOCAL_MEM LOCAL_FILE LOCAL_AUTOMATIC RULEBASED HEURISTIC GREEDY FULL_DP

syn match dmlOperators /\^/
syn match dmlOperators /+/
syn match dmlOperators /-/
syn match dmlOperators /\//
syn match dmlOperators /\*/
syn match dmlOperators /%\/%/
syn match dmlOperators /%%/
syn match dmlOperators /%\*%/
syn match dmlOperators /=/
syn match dmlOperators /<-/
syn match dmlOperators /==/
syn match dmlOperators /!=/
syn match dmlOperators /<>/
syn match dmlOperators /</
syn match dmlOperators />/
syn match dmlOperators /<=/
syn match dmlOperators />/
syn match dmlOperators /&/
syn match dmlOperators /!/

" Scope resolution
syn match dmlOperators /::/

" string enclosed in double quotes
syn region dmlString start=/"/ skip=/\\\\\|\\"/ end=/"/
" string enclosed in single quotes
syn region dmlString start=/'/ skip=/\\\\\|\\'/ end=/'/
" number with no fractional part or exponent
syn match dmlNumber /\<\d\+\>/
" floating point number with integer and fractional parts and optional exponent
syn match dmlFloat /\<\d\+\.\d*\([Ee][-+]\=\d\+\)\=\>/
" floating point number with no integer part and optional exponent
syn match dmlFloat /\<\.\d\+\([Ee][-+]\=\d\+\)\=\>/
" floating point number with no fractional part and optional exponent
syn match   dmlFloat /\<\d\+[Ee][-+]\=\d\+\>/
syn keyword dmlBuiltInConstant LETTERS letters month.abb pi
syn keyword dmlBoolean  FALSE TRUE

syn match dmlDollarIdentifier /$\w\+\(\a\|_\)*/
syn match dmlDollarIdentifier /$\d\+/
"syn match dmlIdentifier /\w\+\(\a\|_\)*/ contains=ALLBUT,dmlNumber
"syn match dmlFunctionCall /\w\+\(\a\|_\)*\s*(.*)/ contains=ALL


hi def link dmlSingleLineComment    Comment
hi def link dmlMultiLineComment     Comment
hi def link dmlType                 Type
hi def link dmlStorageClass         StorageClass
hi def link dmlKeyword              Keyword
hi def link dmlOperators            Operator
hi def link dmlConditional          Conditional
hi def link dmlRepeat               Repeat
hi def link dmlCastFunction         Define
hi def link dmlBuiltin              Function
hi def link dmlString               String
hi def link dmlNumber               Number
hi def link dmlFloat                Float
hi def link dmlBuiltInConstant      Constant
hi def link dmlBoolean              Boolean
hi def link dmlDollarIdentifier     Identifier
hi def link dmlParforParams         Label
"hi def link dmlFunctionCall         Function
"hi def link dmlIdentifier           Identifier



let b:current_syntax = "dml"
