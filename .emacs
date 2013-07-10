;; -*- mode: emacs-lisp -*-

(add-to-list 'load-path "~/.emacs.d")

(require 'cl)  ; adds common lisp functionality
(require 'ido)  ; adds interactivity going between buffers
(ido-mode t)
(require 'ffap)  ; better completions for paths in conjunction with ido
(require 'uniquify)  ; smarter, unique bufer names
(require 'ansi-color)  ; better color in shell mode?
(require 'recentf)  ; recent files
(require 'linum)
(require 'smooth-scrolling)  ; less awkward jumping
(require 'whitespace)  ; colors whitespace
(setq show-trailing-whitespace t)
(require 'dired-x)  ; better dired mode (directory viewing?)
(require 'compile)  ; ?
(require 'auto-complete)  ; auto-complete plugin
(global-auto-complete-mode t)

(menu-bar-mode -1)  ; disables menu bar mode
(put 'downcase-region 'disabled nil)  ; disables command
(put 'upcase-region 'disabled nil)  ; disables command
(setq column-number-mode t)  ; makes column number visible in bottom
(setq save-abbrevs nil)  ; doesn't save this feature
(setq suggest-key-bindings t)  ; ?
(setq vc-follow-symlinks t)  ; open up files by following symlinks
(add-hook 'before-save-hook 'delete-trailing-whitespace)  ; delete trailing whitespaces on save

(setq inhibit-startup-message t  ; do not show the startup message
inhibit-startup-echo-area-message t)

; use spaces for tabs instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq indent-line-function 'insert-tab)

(load "defuns-config.el")  ; various macros from cs184
; (load "custom-coloring.el")  ; from cs184
(load "js-config.el")  ; JS and node.js specific stuff
