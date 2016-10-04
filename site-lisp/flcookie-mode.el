;; enjoy flex

(require 'fdb)
;;(require 'yasnippet)
(require 'font-lock)
(require 'cc-mode)

(define-derived-mode flcookie-mode javascript-mode "Fash Cookie Mode"
  "A major mode for editing Actionscript 3 files."
;  :syntax-table as3-mode-syntax-table
  (set (make-local-variable 'comment-start) "//")
  (set (make-local-variable 'font-lock-defaults) (list as3-font-lock-keywords))
  ;; (set (make-local-variable 'indent-line-function) 'as3-indent-line)
  (setq tab-width 4)
  ;; (smie-setup flcookie-mode-smie-grammar 'flcookie-mode-smie-rules
  ;; 	      :forward-token flcookie-mode-forward-token
  ;; 	      :backward-token 'flcookie-mode-backward-token)

  ;; (as3-project-helper-load)
  ;; (setq flyparse-single-file-to-stdout-maker as3-flyparse-single-file-to-stdout-cmd-maker)
  ;; (setq flyparse-single-file-cmd-maker as3-flyparse-single-file-cmd-maker)
  ;; (setq flyparse-recursive-cmd-maker as3-flyparse-recursive-cmd-maker)
  ;; (flyparse-mode-on)
  ;; (yas/initialize)
  (run-hooks 'flcookie-mode-hook)
  )


(defvar as3-font-lock-default-face 'as3-font-lock-default-face)

(defconst as3-font-lock-keywords
  (append
   (list
    '("\\<\\(get\\|set\\)\\>\\(?:\\s-+\\(\\sw+\\)\\)?"
      (1 font-lock-type-face)
      (2 font-lock-function-name-face nil t))
    '("\\<\\(function\\)\\>\\(?:\\s-+\\(\\sw+\\)\\)?"
      (1 font-lock-keyword-face)
      (2 font-lock-function-name-face nil t))
    '("\\<\\(function\\)\\>"
      (1 font-lock-keyword-face))
    '("\\<\\([A-Z_]+\\)\\>"
      (1 font-lock-constant-face))
    '("\\<\\([A-Z]\\sw+\\)\\>"
      (1 font-lock-type-face))
    '("\\<\\(var\\)\\>\\(?:\\s-+\\(_?\\sw+\\)\\)?"
      (1 font-lock-keyword-face)
      (2 font-lock-variable-name-face nil t))
    '("\\(_\\sw+\\)"
      (1 font-lock-variable-name-face nil t))
    '("\\<\\(\\|this\\|super\\|debugger\\|delete\\|export\\|in\\|is\\|typeof\\|with\\)\\>"
      (1 font-lock-builtin-face))
    '("\\<\\(public\\|private\\|override\\|protected\\|import\\|package\\|static\\|class\\|const\\|extends\\|implements\\)\\>"
      (1 font-lock-keyword-face))
    '("\\<\\(return\\|new\\|if\\|else\\|while\\|for\\|throw\\)\\>"
      (1 font-lock-keyword-face))
    '("\\<\\(default\\)\\>\\(?:\\s-+\\(\\sw+\\)\\)?"
      (1 font-lock-keyword-face)
      (2 font-lock-variable-name-face nil t))
    '("\\<\\(void\\)\\>\\(?:\\s-+\\(\\sw+\\)\\)?"
      (1 font-lock-keyword-face t)
      (2 as3-font-lock-default-face t t))
    '("\\<\\(Infinity\\|NaN\\|undefined\\)\\>" 
      0 font-lock-constant-face t)
    )
   )
  "Subdued level highlighting for As3 mode.")


(provide 'flcookie-mode)
