" Vim syntax file
" Language:·Quickfix window
" Maintainer:·Bram Moolenaar <Bram@vim.org>
" Last change:··2001 Jan 15

" Modified: wbit
" Last change:  2012 May 25
" + added qfInfo, qfWarning

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" A bunch of useful C keywords
syn match qfFileName "^[^|]*" nextgroup=qfSeparator
syn match qfSeparator "|" nextgroup=qfLineNr contained
syn match qfLineNr "[^|]*" contained contains=qfInfo,qfError,qfWarning
syn match qfInfo "info" contained
syn match qfError "error" contained
syn match qfWarning "warning" contained

" The default highlighting.
hi def link qfFileName Directory
hi def link qfLineNr LineNr
hi def link qfInfo Comment
hi def link qfError Error
hi def link qfWarning WarningMsg

let b:current_syntax = "qf"

" vim: ts=8
