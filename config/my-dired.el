(put 'dired-find-alternate-file 'disabled nil)

(use-package evil
             :config
             (eval-after-load 'dired
                              '(progn
                                 (evil-define-key 'normal dired-mode-map
                                                  "h" 'dired-up-directory
                                                  "l" 'dired-find-alternate-file)
                                 )))

(provide 'my-dired)

