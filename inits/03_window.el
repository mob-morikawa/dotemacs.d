;;window
;; (require 'window-or-split)
;; (define-key global-map (kbd "C-t") 'other-window-or-split)

(defun split-window-vertically-n (num_wins)
  (interactive "p")
  (if (= num_wins 2)
      (split-window-vertically)
    (progn
      (split-window-vertically
       (- (window-height) (/ (window-height) num_wins)))
      (split-window-vertically-n (- num_wins 1)))))
(defun split-window-horizontally-n (num_wins)
  (interactive "p")
  (if (= num_wins 2)
      (split-window-horizontally)
    (progn
      (split-window-horizontally
       (- (window-width) (/ (window-width) num_wins)))
      (split-window-horizontally-n (- num_wins 1)))))

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (if (>= (window-body-width) 220)
        (split-window-horizontally-n 3)
      (split-window-horizontally)))
  (other-window 1))

;; (defun other-window-or-split ()
;;   (interactive)
;;   (when (one-window-p)
;;     (split-window-horizontally))
;;   (other-window 1))
;; (setq pc-select-selection-keys-only -1)

(global-set-key (kbd "C-t") 'other-window-or-split)


;; (require 'multi-term)
;; (require 'key-intercept nil t)
;; (setq multi-term-program shell-file-name)

;; (global-set-key (kbd "C-M-t") 'multi-term-dedicated-open)
;; (global-set-key (kbd "C-c n") 'multi-term-next)
;; (global-set-key (kbd "C-c p") 'multi-term-prev)
;; (global-set-key (kbd "C-M-t") 'multi-term)
;; (require 'term+)
;; (require 'xterm-256color)
;; (require 'term+mux)
;; (global-set-key (kbd "C-M-t") 'multi-term)

;; (require 'key-intercept nil t)
;; ;; コマンドの後の引数は, キー単体の入力だと判断するまでの時間(秒)
;; (define-intercept-key (kbd "ESC") 'yet-another-command 0.01)

;; (require 'term+key-intercept)

;; ;; もうちょい改良が必要
;; (defun it-multi-term-dedicated-toggle ()
;;   "jump back to previous location after toggling ded term off"
;;   (interactive)
;;   (if (multi-term-dedicated-exist-p)
;;       (progn
;;   (multi-term-dedicated-toggle)
;;   (switch-to-buffer-other-window old-buf))
;;     (progn
;;       (setq old-buf (current-buffer))
;;       (multi-term-dedicated-toggle))
;;     )
;;   )

;; (add-hook 'term-mode-hook '(lambda ()
;; ;; 			     (define-key term-raw-map "\C-y" 'term-paste)
;; ;; 			     (define-key term-raw-map "\C-q" 'move-beginning-of-line)
;; ;; 			     (define-key term-raw-map "\C-r" 'term-send-raw)
;; ;; 			     (define-key term-raw-map "\C-s" 'term-send-raw)
;; ;; 			     ;; (define-key term-raw-map "\C-c" 'term-send-raw)
;; ;; 			     (define-key term-raw-map "\C-f" 'forward-char)
;; ;; 			     (define-key term-raw-map "\C-b" 'backward-char)
;; ;; 			     (define-key term-raw-map "\C-t" 'set-mark-command)
;; 			     (define-key term-raw-map (kbd "ESC") 'term-send-raw)
;; ;; 			     ;; (define-key term-raw-map [delete] 'term-send-raw)
;; 			     ))


(require 'bash-completion)
(bash-completion-setup)


;;popwin 
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:popup-window-position 'bottom)

;; popwin list
(push '("*ajc-import-java-class*") popwin:special-display-config)
(push '("*Compile-Log*") popwin:special-display-config)
(push '("*GTAGS SELECT*" t) popwin:special-display-config)
;; (push '("*golint*") popwin:special-display-config)
