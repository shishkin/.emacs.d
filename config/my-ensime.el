(use-package ensime
             :ensure t

             :init
             (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))

(provide 'my-ensime)

