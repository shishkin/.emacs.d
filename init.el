;; Don't create ~ lockfiles
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; no bell
(setq ring-bell-function 'ignore)

;; Hide menu-bar
;(menu-bar-mode -1)

;; Hide tool-bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Don't show native OS scroll bars for buffers because they're redundant
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(evil
    solarized-theme))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Show line numbers
(global-linum-mode)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; yay rainbows!
;(global-rainbow-delimiters-mode t)

;; Highlight current line
(global-hl-line-mode 1)

(load-theme 'solarized-light t)

;; increase font size for better readability
(set-face-attribute 'default nil :height 160)

(require 'evil)
(evil-mode 1)
