;; init

(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")
