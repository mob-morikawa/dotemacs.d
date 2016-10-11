(exec-path-from-shell-initialize)

(defun skt:shell ()
  (or (executable-find "bash")
      (executable-find "zsh")
      (executable-find "cmdproxy")
      (error "can't find 'shell' command in PATH!!")))


;; Shell 名の設定 要調整
(setq shell-file-name (skt:shell))
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name)

(require 'multi-term)
(setq multi-term-program shell-file-name)

(global-set-key (kbd "C-M-t") 'multi-term)
;;term

(load-theme 'tango-dark t)
;; (custom-theme-set-faces
;;  'tango-dark
;;  `(term-color-black ((t (:foreground "#555753" :background "#555753"))))
;;  `(term-color-red ((t (:foreground "#EF2929" :background "#EF2929"))))
;;  `(term-color-green ((t (:foreground "#8AE234" :background "#8AE234"))))
;;  `(term-color-yellow ((t (:foreground "#FCE94F" :background "#FCE94F"))))
;;  `(term-color-blue ((t (:foreground "#729FCF" :background "#729FCF"))))
;;  `(term-color-magenta ((t (:foreground "#AD7FA8" :background "#AD7FA8"))))
;;  `(term-color-cyan ((t (:foreground "#34E2E2" :background "#34E2E2"))))
;;  `(term-color-white ((t (:foreground "#EEEEEC" :background "#EEEEEC"))))
;;  )

(add-hook 'term-mode-hook '(lambda ()
			     (define-key term-raw-map "\C-y" 'term-paste)
			     (define-key term-raw-map "\C-q" 'move-beginning-of-line)
			     (define-key term-raw-map "\C-r" 'term-send-raw)
			     (define-key term-raw-map "\C-s" 'term-send-raw)
			     ;; (define-key term-raw-map "\C-c" 'term-send-raw)
			     (define-key term-raw-map "\C-f" 'forward-char)
			     (define-key term-raw-map "\C-b" 'backward-char)
			     (define-key term-raw-map "\C-t" 'set-mark-command)
			     (define-key term-raw-map (kbd "ESC") 'term-send-esc)
			      
	  ;; 			     ;; (define-key term-raw-map [delete] 'term-send-raw)
			     ))




