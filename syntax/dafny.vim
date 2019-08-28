" Vim syntax file
" Language: Dafny
" Maintainer: Michael Lowell Roberts <mirobert at microsoft dot com>
"
" Based on original Dafny syntax script by Kuat Yessenov.
" Copyright (C) Microsoft Corporation.  All Rights Reserved.
" Licensed under the Microsoft Public License (Ms-PL).
" See https://dafny.codeplex.com/license for more details.

if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax != "dafny"
  finish
endif

" reset syntax highlighting for the current buffer.
syntax clear
" dafny is case sensitive.
syntax case match

syntax keyword dafnyFunction function predicate copredicate
syntax keyword dafnyMethod method lemma constructor colemma 
syntax keyword dafnyTypeDef class datatype codatatype newtype type iterator trait extends
syntax keyword dafnyModule abstract module import opened as default
syntax keyword dafnyConditional if then else match case
syntax keyword dafnyRepeat while
syntax keyword dafnyStatement assume assert return yield new print break label where calc modify
syntax keyword dafnyKeyword var ghost returns yields null static protected this refines include inductive exclusively const
syntax keyword dafnyType bool char nat int real set iset multiset seq string map imap object array array2 array3
syntax keyword dafnyLogic requires ensures modifies reads decreases invariant
syntax keyword dafnyOperator forall exists old fresh
syntax keyword dafnyBoolean true false

syntax region dafnyString start=/"/ skip=/\\"/ end=/"/

syntax match dafnyComment /\/\/.*/
syntax region dafnyComment start="/\*" end="\*/"

syntax match dafnyNumber /\<\d\%(_\?\d\)*\>/
syntax match dafnyNumber /\<0x\x\%(_\?\x\)*\>/
syntax match dafnyNumber /\<\d\%(_\?\d\)*\.\d\%(_\?\d\)*\>/

syntax match dafnyOperator "==>"
syntax match dafnyOperator "<=="
syntax match dafnyOperator "<==>"
syntax match dafnyOperator "|"
syntax match dafnyOperator "::"

highlight link dafnyFunction pythonStatement
highlight link dafnyMethod pythonStatement
highlight link dafnyModule cStorageClass
highlight link dafnyTypeDef pythonStatement
highlight link dafnyConditional pythonConditional
highlight link dafnyRepeat pythonRepeat
highlight link dafnyKeyword scalaKeyword
highlight link dafnyType scalaType
highlight link dafnyLogic pythonStatement
highlight link dafnyComment scalaComment
highlight link dafnyString scalaString
highlight link dafnyNumber scalaNumber
highlight link dafnyOperator scalaOperator
highlight link dafnyStatement pythonStatement
highlight link dafnyBoolean scalaBoolean

syntax keyword valeKeyword axiom bv by call Dependent dependent extern for fun
syntax keyword valeKeyword goto havoc implies in inline inout int_range is let
syntax keyword valeKeyword lets operand_type operator out precedence preserves
syntax keyword valeKeyword procedure prop readonly reveal tuple Type

highlight link valeKeyword scalaKeyword
