(use-package evil-leader
  :ensure t
  :init (global-evil-leader-mode))

(use-package evil
  :ensure t

  :config
  (evil-mode 1))

(use-package evil-org
  :ensure t)

(provide 'my-evil)

