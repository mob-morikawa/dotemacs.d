;;php mode
(require 'php-mode)
(autoload 'php-mode "php-mode")
(setq auto-mode-alist
      (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)

;;php mode
(autoload 'nxml-mode-hook "nxml-mode")
(setq auto-mode-alist
      (cons '("\\.ctp\\'" . nxml-web-mode) auto-mode-alist))

;; (require 'cake2)
;; (add-hook 'cake2-hook
;; 	  (define-key php-mode-map (kbd "C-c s") 'cake2::switch)
;; 	  )
