(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;;disable backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'server)
(unless (server-running-p)
  (server-start))

;;(require 'w3m) 
(setq inhibit-startup-message t)

;;(global-hl-line-mode t)                   ;; 現在行をハイライト
(show-paren-mode t)                       ;; 対応する括弧をハイライト
(setq show-paren-style 'expression)            ;; 括弧のハイライトの設定。
(transient-mark-mode t)                   ;; 選択範囲をハイライト
