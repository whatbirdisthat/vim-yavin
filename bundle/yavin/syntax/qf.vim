" Vim syntax file
" Language:·Quickfix window
" Maintainer:·Bram Moolenaar <Bram@vim.org>
" Last change:··2001 Jan 15

" Modified: David Walters 2012 May 24
" + added qdDebug, qfInfo and qfWarning
" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" A bunch of useful C keywords
syn match qfFileName "^[^|]*" nextgroup=qfSeparator
syn match qfSeparator "|" nextgroup=qfLineNr contained
syn match qfLineNr "[^|]*" contained contains=qfInfo,qfError,qfWarning,qfDebug
syn match qfDebug "debug" contained
syn match qfError "error" contained
syn match qfInfo "info" contained
syn match qfWarning "warning" contained

" The default highlighting.
hi def link qfFileName Directory
hi def link qfLineNr LineNr
hi def link qfDebug Debug
hi def link qfInfo Directory
hi def link qfWarning WarningMsg
hi def link qfError Error

let b:current_syntax = "qf"

" vim: ts=8
