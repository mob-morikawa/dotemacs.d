;; markdown mode
;; markdownモード（gfm-mode Github flavor markdown mode）を拡張子と関連付けする
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

(add-hook 'markdown-mode-hook 'auto-complete-mode)

;; ファイル内容を標準入力で渡すのではなく、ファイル名を引数として渡すように設定
(defun markdown-custom ()
  "markdown-mode-hook"
  (setq markdown-command-needs-filename t)
  )
(add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))


(setq markdown-command "jq --slurp --raw-input '{\"text\": \"\\(.)\", \"mode\": \"gfm\"}' | curl -sS --data @- https://api.github.com/markdown")

(require 'page-ext)
(add-hook 'markdown-mode-hook
          '(lambda ()
             (setq page-delimiter "^## ")
             (define-key markdown-mode-map (kbd "M-p") 'previous-page)
             (define-key markdown-mode-map (kbd "M-n") 'next-page)
            ))

;; M-n	次のスライド
;; M-p	前のスライド
;; C-x n w	スライド表示の解除
;; C-c C-x TAB	画像の表示


;;(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;;(define-key markdown-mode-map (kbd "\C-c \C-c \C-e") 'markdown-export)
(require 'w3m)
(define-key markdown-mode-map (kbd "\C-c \C-c \C-v")
  (lambda ()
    (interactive)
    (setq html-file-name (concat (file-name-sans-extension (buffer-file-name)) ".html"))
    (markdown-export html-file-name)
    (if (one-window-p) (split-window))
    (other-window 1)
    (w3m-find-file html-file-name)))

;; (defun markdown-preview-by-eww ()
;;   (interactive)
;;   (message (buffer-file-name))
;;   (call-process "grip" nil nil nil
;;                 (buffer-file-name)
;;                 "--export"
;;                 "/tmp/grip.html")
;;   (let ((buf (current-buffer)))
;;     (eww-open-file "/tmp/grip.html")
;;     (switch-to-buffer buf)
;;     (pop-to-buffer "*eww*")))
