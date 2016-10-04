(global-auto-revert-mode 1)

;;line
(global-linum-mode t)
(setq linum-format "%4d")

;;; 最終行に必ず一行挿入する
(setq require-final-newline t)


;; ;;tail todo
;; (require 'tail)
;; (setq tail-hide-delay 100000)
;; (setq tail-max-size 40)                 ;Window のサイズ

;;ffap
(ffap-bindings)

;; session
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(setq session-undo-check -1)
