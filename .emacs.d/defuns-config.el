;; --------------------
;; -- Global defuns ---
;; --------------------
(defun next5()
  (interactive)
  (next-line 5))

(defun prev5()
  (interactive)
  (previous-line 5))

(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

(defun backward-delete-word (arg)
  "Delete characters backward until encountering the end of a word.
With argument, do this that many times.
http://www.emacswiki.org/emacs/BackwardDeleteWord
"
  (interactive "p")
  (delete-word (- arg)))

(defun back-window ()
  (interactive)
  (other-window -1))

(defun whitespace-cleanup-all ()
  (interactive)
  (setq indent-tab-mode nil)
  (whitespace-cleanup))

(defun whitespace-clean-and-compile ()
  "Cleans up whitespace and compiles. The compile-command is a
varies with the active mode."
  (interactive)
  (whitespace-cleanup-all)
  (compile compile-command))

(defvar real-keyboard-keys
  '(("M-<up>"        . "\M-[1;3A")
    ("M-<down>"      . "\M-[1;3B")
    ("M-<right>"     . "\M-[1;3C")
    ("M-<left>"      . "\M-[1;3D")
    ("C-<return>"    . "\C-j")
    ("C-<delete>"    . "\M-[3;5~")
    ("C-<up>"        . "\M-[1;5A")
    ("C-<down>"      . "\M-[1;5B")
    ("C-<right>"     . "\M-[1;5C")
    ("C-<left>"      . "\M-[1;5D"))
  "An assoc list of pretty key strings
and their terminal equivalents.")

(defun key (desc)
  (or (and window-system (read-kbd-macro desc))
      (or (cdr (assoc desc real-keyboard-keys))
	  (read-kbd-macro desc))))

(fset 'align-equals "\C-[xalign-regex\C-m=\C-m")
(global-set-key "\M-=" 'align-equals)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c;" 'comment-or-uncomment-region)
(global-set-key "\M-n" 'next5)
(global-set-key "\M-p" 'prev5)
(global-set-key "\M-o" 'other-window)
(global-set-key "\M-i" 'back-window)
(global-set-key "\C-z" 'zap-to-char)
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-d" 'delete-word)
(global-set-key "\M-h" 'backward-delete-word)
(global-set-key "\M-u" 'zap-to-char)
