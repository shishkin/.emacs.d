(use-package solarized-theme
             :ensure solarized-theme
             :config
             (progn
               (load-theme 'solarized-light t)))

;; increase font size for better readability
(set-face-attribute 'default nil :height 160)

(provide 'my-theme)

