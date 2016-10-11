;; init

(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet yaml-mode wgrep-ag web-mode use-package smex smartparens session scratch-log projectile prodigy popwin php-mode persp-mode pallet nyan-mode multiple-cursors multi-term mozc-popup mmm-mode markdown-mode magit-gh-pulls key-chord jedi init-loader idle-highlight-mode htmlize helm-gtags go-eldoc flycheck-cask expand-region exec-path-from-shell drag-stuff browse-kill-ring bash-completion ansible android-mode all ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
