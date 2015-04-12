;; Don't create ~ lockfiles
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; no bell
(setq ring-bell-function 'ignore)

;; Hide menu-bar
(when (and (fboundp 'menu-bar-mode)
	   (not window-system))
  (menu-bar-mode -1))

;; Hide tool-bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Set initial window size
(setq initial-frame-alist '((top . 0)
                            (left . 0)
                            (fullscreen . fullheight)
                            (width . 100)))

;; Show line numbers
(global-linum-mode)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; yay rainbows!
;(global-rainbow-delimiters-mode t)

;; Highlight current line
(global-hl-line-mode 1)

(provide 'my-core)

