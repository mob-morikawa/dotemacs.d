;; ref https://gist.github.com/PharaohKJ/cc849ad12ca613fec9604e5e91012ffc

;; ref https://github.com/amperser/proselint/issues/37
;; textlint
(require 'flycheck)

(flycheck-define-checker textlint
  "Text Lint"
  :command ("textlint" "--format" "unix" source-inplace)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": "
            (id (one-or-more (not (any " "))))
            (message (one-or-more not-newline)
                     (zero-or-more "\n" (any " ") (one-or-more not-newline)))
            line-end))
  :modes (text-mode markdown-mode gfm-mode))
(add-to-list 'flycheck-checkers 'textlint)

(add-hook 'gfm-mode-hook 'flycheck-mode)
(add-hook 'markdown-mode-hook 'flycheck-mode)
