(require 'all)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ag-highlight-search t)
;;  '(ag-reuse-buffers (quote nil))
;;  '(ag-reuse-window (quote nil))
;;  '(google-translate-default-source-language "en")
;;  '(google-translate-default-target-language "ja")
;;  '(menu-bar-mode nil)
;;  '(package-selected-packages
;;    (quote
;;     (markdown-preview-eww helm-mt markdown-mode elscreen yasnippet yaml-mode wgrep-helm wgrep-ag web-mode w3m term+mux term+key-intercept ssh-config-mode sql-indent session scratch-log popwin popup-complete php-mode packed nginx-mode multi-term mozc mmm-mode magit key-chord jedi ht historyf helm-gtags helm-filesets google-translate golint go-eldoc go-complete git-rebase-mode git-commit-mode flymake-cursor flymake f exec-path-from-shell confluence company-cmake browse-kill-ring bash-completion auto-install anything android-mode all ag)))
;;  '(session-use-package t nil (session))
;;  '(tool-bar-mode nil))


;; ag
;; ag(The Silver Searcher)コマンドを以下からインストール:
;;     http://github.com/ggreer/the_silver_searcher#installation
;; ag.elとwgrep-ag.elをlist-packageでMelpaなどからインストールしておく
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
