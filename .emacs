(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete)
(global-auto-complete-mode t)

;experiment with django template formatting; not fun
;(load "~/.emacs.d/nxhtml/autostart.el")
;(setq mumamo-background-colors nil)
;(add-to-list 'auto-mode-alist '("\\.html$" . django-html-mumamo-mode))

(setq inhibit-startup-message t
inhibit-startup-echo-area-message t)

