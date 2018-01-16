(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)
(global-set-key (kbd "M-g") 'magit-status)
