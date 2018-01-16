;; init
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; el-get
(add-to-list 'load-path (locate-user-emacs-file "el-get"))
(require 'el-get)
(setq el-get-dir (locate-user-emacs-file "~/.emacs.d/.el-get"))

;; bundle package
(el-get-bundle auto-complete)
(el-get-bundle init-loader)
(el-get-bundle bash-completion)
(el-get-bundle mozc)
(el-get-bundle all)
;; (el-get-bundle exec-path-from-shell-initialize)
(el-get-bundle multi-term)
(el-get-bundle key-chord)
(el-get-bundle scratch-log)
(el-get-bundle popwin)
(el-get-bundle wgrep-ag)
(el-get-bundle ag)
(el-get-bundle browse-kill-ring)
(el-get-bundle persp-mode)
(el-get-bundle yasnippet)
(el-get-bundle twittering-mode)
(el-get-bundle go-mode)
(el-get-bundle go-eldoc)
(el-get-bundle android-mode)
(el-get-bundle php-mode)
(el-get-bundle epc)
(el-get-bundle mmm-mode)
(el-get-bundle jedi)
(el-get-bundle magit-gh-pulls)

(el-get-bundle ivy)
(el-get-bundle swiper)
(el-get-bundle counsel)

(el-get-bundle flycheck)
(el-get-bundle session)
(el-get-bundle markdown-mode)
;; (el-get-bundle ajc-java-complete-config)
(el-get-bundle actionscript-mode)

(el-get-bundle flycheck-cask)
(el-get-bundle htmlize)
(el-get-bundle idle-highlight-mode)
(el-get-bundle magit)
(el-get-bundle nyan-mode)

(el-get-bundle ansible)
(el-get-bundle ansible-vault)
(el-get-bundle yaml-mode)

(el-get-bundle neotree)
(el-get-bundle apache-mode)
;; (el-get-bundle )
;



(package-initialize)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")
(custom-set-variables
 '(package-selected-packages
   (quote
    (ansible-vault ansible wgrep-ag scratch-log persp-mode mozc all)))
 '(session-use-package t nil (session)))
(custom-set-faces
 )
