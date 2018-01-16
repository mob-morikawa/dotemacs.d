(require 'all)

(require 'ag)
 ; 現在のバッファを検索結果表示に使う
(require 'wgrep-ag)
(autoload 'wgrep-ag-setup "wgrep-ag")
(add-hook 'ag-mode-hook 'wgrep-ag-setup)
;; agの検索結果バッファで"r"で編集モードに。
;; C-x C-sで保存して終了、C-x C-kで保存せずに終了
(define-key ag-mode-map (kbd "r") 'wgrep-change-to-wgrep-mode)
;; キーバインドを適当につけておくと便利。"\C-xg"とか
(global-set-key [(super m)] 'ag)
(setq ag-highlight-search t)
(setq ag-reuse-buffers (quote nil))
(setq ag-reuse-window (quote nil))

;; (require 'pt)
;;  ; 現在のバッファを検索結果表示に使う
;; (require 'wgrep-pt)
;; (autoload 'wgrep-ag-setup "wgrep-pt")
;; (add-hook 'pt-mode-hook 'wgrep-pt-setup)
;; ;; agの検索結果バッファで"r"で編集モードに。
;; ;; C-x C-sで保存して終了、C-x C-kで保存せずに終了
;; (define-key pt-mode-map (kbd "r") 'wgrep-change-to-wgrep-mode)
;; ;; キーバインドを適当につけておくと便利。"\C-xg"とか
;; (global-set-key [(super m)] 'pt)
;; (setq pt-highlight-search t)
;; (setq pt-reuse-buffers (quote nil))
;; (setq pt-reuse-window (quote nil))
