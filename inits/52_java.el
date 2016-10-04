
;; android-mode
(require 'android-mode)
(setq android-mode-sdk-dir "/devel/sdks/adt-bundle-linux/sdk/")
;;with java-modeo
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-java-complete")
(require 'ajc-java-complete-config)
(set 'ajc-tag-file "~/.emacs.d/tags/ajc.tag")
(add-hook 'android-mode-hook 'ajc-java-complete-mode)
(add-hook 'ajc-java-complete-mode-hook
          (lambda ()
	    (define-key java-mode-map (kbd "C-c i") 'ajc-import-class-under-point)
	    ))

