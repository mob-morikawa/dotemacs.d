;; golang-mode
(require 'go-mode)
(require 'go-eldoc)

(add-to-list 'load-path "/home/mintuser/.go/src/github.com/golang/lint/misc/emacs")
(add-to-list 'load-path "/home/mintuser/.go/src/github.com/nsf/gocode/emacs")

(add-hook 'go-mode-hook (lambda ()
			  (require 'go-autocomplete)
                          (add-hook 'before-save-hook 'gofmt-before-save nil t)
			  (add-hook 'after-save-hook 'golint nil t)
                          ;; (set (make-local-variable 'compile-command)
                          ;;      "go build -v && go test -v && go vet")
                          ;; (local-set-key (kbd "M-.") 'godef-jump))
			  (define-key go-mode-map (kbd "C-t") 'godef-jump)
			  ))
(require 'go-autocomplete)
(add-hook 'go-mode-hook 'go-eldoc-setup)
(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)
(require 'auto-complete-config)

