;;objc mode
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@implementation" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@interface" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@protocol" . objc-mode))

(setq ff-other-file-alist
     '(("\\.mm?$" (".h"))
       ("\\.cc$"  (".hh" ".h"))
       ("\\.hh$"  (".cc" ".C"))
       ("\\.c$"   (".h"))
       ("\\.h$"   (".c" ".cc" ".C" ".CC" ".cxx" ".cpp" ".m" ".mm"))
       ("\\.C$"   (".H"  ".hh" ".h"))
       ("\\.H$"   (".C"  ".CC"))
       ("\\.CC$"  (".HH" ".H"  ".hh" ".h"))
       ("\\.HH$"  (".CC"))
       ("\\.cxx$" (".hh" ".h"))
       ("\\.cpp$" (".hpp" ".hh" ".h"))
       ("\\.hpp$" (".cpp" ".c"))))
(add-hook 'objc-mode-hook
         (lambda ()
           (define-key c-mode-base-map (kbd "C-c o") 'ff-find-other-file)
         ))


(defun xcode:buildandrun ()
 (interactive)
 (do-applescript
  (format
   (concat
    "tell application \"Xcode\" to activate \r"
    "tell application \"System Events\" \r"
    "     tell process \"Xcode\" \r"
    "          key code 15 using {command down}\r"
    "    end tell \r"
    "end tell \r"
    ))))

(add-hook 'objc-mode-hook
         (lambda ()
           (define-key objc-mode-map (kbd "C-c c") 'xcode:buildandrun)
	   ))
;; 作成したPythonスクリプトをelispでラップする
(defun open-in-xcode ()
  (interactive)
  (setq filename (buffer-file-name (current-buffer)))
  (setq offset   (format "%d" (point)))
  (call-process "~/.emacs.d/open_in_xcode.py" nil t nil filename offset))

;; 作成した関数にキーの割当
(global-set-key (kbd "C-c x") 'open-in-xcode)

