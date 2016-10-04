(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
;; (global-auto-complete-mode t)
(define-key ac-completing-map "\C-n" 'ac-next)
(define-key ac-completing-map "\C-p" 'ac-previous)
(setq ac-auto-start nil)
(global-set-key [(C-tab)] 'auto-complete)

;;company mode
;; (require 'ac-company)
;; (ac-company-define-source ac-source-company-xcode company-xcode)
;; (add-hook 'objc-mode-hook
;; 	  (lambda ()
;; 	    (push 'ac-source-company-xcode ac-sources)
;; ;;	    (push 'ac-source-c++-keywords ac-sources)
;; 	    ))



;;append list
(setq ac-modes 
      (append ac-modes '(objc-mode) '(as3-mode))
      )
