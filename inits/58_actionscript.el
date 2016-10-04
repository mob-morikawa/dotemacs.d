(add-to-list 'load-path "~/.emacs.d/site-lisp/actionscript-mode")

(require 'actionscript-mode)
(setq auto-mode-alist
      (append '(("\\.as$" . actionscript-mode))
              auto-mode-alist))

(add-hook 'actionscript-mode-hook 'auto-complete-mode)
