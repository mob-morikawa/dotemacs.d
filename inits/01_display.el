;;font
(cond ((string-match "apple-darwin" system-configuration) ;; Mac
       (set-face-attribute 'default nil
       			   :family "Source Code Pro"
       			   :height 125 )
       )
      ((string-match "linux" system-configuration)        ;; Linux

       (set-face-attribute 'default nil
       			   :family "Myrica"
       			   :height 150)
       )
      ((string-match "dos" system-configuration)        ;; windows
       ;; (set-face-attribute 'default nil
       ;; 			   :family "Source Code Pro"
       ;; 			   :height 100 )
       )
      ((string-match "freebsd" system-configuration)      ;; FreeBSD
        (message "%s" , "bsd")
       )
      )

;; color-theme
(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/site-lisp/replace-colorthemes"))

(load-theme 'desert t t)
(enable-theme 'desert)
(setq system-uses-terminfo nil)

;;tab width
(setq-default tab-width 8)
(setq default-tab-width 8)
(setq-default indent-tabs-mode t)

;;hide scrollbar
(toggle-scroll-bar nil)

(tool-bar-mode 0)
(menu-bar-mode 0)
