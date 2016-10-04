;; todo 途中

(require 'helm-gtags)

;; (when (require 'helm-config nil t)
;;   (helm-mode 1)
;;   (custom-set-variables '(helm-ff-auto-update-initial-value nil))
;;   (define-key helm-c-read-file-map (kbd "C-h") 'delete-backward-char)
;;   (define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;;   )


;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
	     (setq gtags-auto-update t)

	     ;; (setenv "GTAGSCONF" "/usr/local/share/gtags/gtags.conf")
	     (setenv "GTAGSLABEL" "pygments")

	     (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
	     (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
	     (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
	     (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)))


(setq helm-gtags-auto-update t)
;; gtags-mode を使いたい mode の hook に追加する
(add-hook 'c-mode-common-hook
          '(lambda()
             (helm-gtags-mode)))
(add-hook 'python-mode-hook
          '(lambda()
             (helm-gtags-mode)))
(add-hook 'objc-mode-hook
          '(lambda()
             (helm-gtags-mode)))
(add-hook 'nXML-mode-hook
	  '(lambda()
	     (helm-gtags-mode)))
(add-hook 'php-mode-hook
	  '(lambda()
	     (helm-gtags-mode)))

;;ジャンプ先が複数あった場合の選択画面の見た目
(add-hook 'gtags-select-mode-hook
  '(lambda ()
     (setq hl-line-face 'underline)
     (hl-line-mode 1)
))
