;;; scratchのログ、直前の内容
(setq sl-scratch-log-file "~/.emacs.d/.scratch-log")
(setq sl-prev-scratch-string-file "~/.emacs.d/.scratch-log-prev")
(setq sl-restore-scratch-p t)           ;復元
(setq sl-prohibit-kill-scratch-buffer-p t) ;削除不能
;;; *scratch*とscratch-logのメジャーモードをorg-modeにする
(add-to-list 'auto-mode-alist '("scratch-log" . org-mode))
;;; 30秒ごとに自動保存
(setq sl-use-timer t)
(setq sl-timer-interval 3)
;;; requireした時点で各種フック・タイマーが設定される
(require 'scratch-log)

