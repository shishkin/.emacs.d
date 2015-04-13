;; <C-h v> on a variable or <C-h f> on a function for help

(setq

 ;; disable all the temp files
 make-backup-files nil
 create-lockfiles nil
 auto-save-default nil

 inhibit-startup-message t

 ;; initial window size
 initial-frame-alist '((top . 0)
		       (left . 0)
		       (fullscreen . fullheight)
		       (width . 100))

 ring-bell-function 'ignore)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(global-linum-mode t)
(global-hl-line-mode t)

;; matching parens
(show-paren-mode t)

;; syntax highlighting
(global-font-lock-mode t)

;; proper line wrapping
(global-visual-line-mode t)

(provide 'my-core)

