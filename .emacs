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

(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (javascript-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)

(setq-default indent-tabs-mode nil)
