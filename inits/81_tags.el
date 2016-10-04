
;; update GTAGS
;; (require 'gtags)
;; (defun update-gtags (&optional prefix)
;;   (interactive "P")
;;   (let ((rootdir (gtags-get-rootpath))
;;         (args (if prefix "-v" "-iv")))
;;     (when rootdir
;;       (let* ((default-directory rootdir)
;;              (buffer (get-buffer-create "*update GTAGS*")))
;;         (save-excursion
;;           (set-buffer buffer)
;;           (erase-buffer)
;;           (let ((result (process-file "gtags" nil buffer nil args)))
;;             (if (= 0 result)
;;                 (message "GTAGS successfully updated.")
;;               (message "update GTAGS error with exit status %d" result))))))))
;; (add-hook 'after-save-hook 'update-gtags)

;; GNU global
;; (setq gtags-mode-hook
;;       '(lambda ()
;; 	 (gtags-make-complete-list)
;; 	 (setq gtags-auto-update t)
	 
;; 	 (setenv "GTAGSCONF" "/usr/local/share/gtags/gtags.conf")
;; 	 (setenv "GTAGSLABEL" "ctags")
	 
	 
;; 	 (define-key gtags-mode-map "\C-t" 'gtags-find-tag) ;関数の定義元へ
;; 	 (define-key gtags-mode-map "\M-r" 'gtags-find-rtag) ;関数の参照先へ
;; 	 (define-key gtags-mode-map "\M-s" 'gtags-find-symbol) ;変数の定義元/参照先へ
;; ;;	 (define-key gtags-mode-map "\M-f" 'gtags-find-file) ;ファイルにジャンプ << confilic 
;; 	 (define-key gtags-mode-map "\M-t" 'gtags-pop-stack) ;前のバッファに戻る
;; 	 ))


(global-set-key [(C x) (C t)] 'google-translate-at-point)
