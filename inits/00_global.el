(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

(require 'server)
(unless (server-running-p)
  (server-start))

;;(require 'w3m) 
(setq inhibit-startup-message t)
