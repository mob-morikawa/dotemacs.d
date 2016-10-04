(add-hook 'c-mode-common-hook
	  (lambda ()
	    (setq c-basic-offset tab-width)
	    (c-set-style "bsd")))

