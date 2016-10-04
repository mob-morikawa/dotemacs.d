;; mmm-mode
(require 'mmm-mode)
(setq mmm-global-mode 'maybe)
(setq mmm-submode-decoration-level 2)


;; js in html
(mmm-add-classes
 '((js-in-html
    :submode javascript-mode
    :front "<script[^>]*>\n<!--\n"
    :back  "// ?-->\n</script>")))
(mmm-add-mode-ext-class nil "\\.s?html?\\(\\..+\\)?$" 'js-in-html)

(mmm-add-mode-ext-class nil "\\.ctp?\\'" 'html-php)
(mmm-add-classes
 '((html-php
    :submode php-mode
    :front "<\\?\\(php\\)?"
    :back "\\?>")))
(add-to-list 'auto-mode-alist '("\\.ctp?\\'" . nxml-mode))

