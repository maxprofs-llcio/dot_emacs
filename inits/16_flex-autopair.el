;;; 16_flex-autopair.el --- Flex Auto Pair.
;;; Commentary:
;;; Code:


(require 'flex-autopair)
(flex-autopair-mode 1)


(defun my-hook-function ()
  (add-to-list 'flex-autopair-pairs '(?\< . ?\>)))

(add-hook 'c-mode-hook 'my-hook-function)


(setq flex-autopair-user-conditions-high
      `(((and
          (eq major-mode 'c-mode)
          (eq last-command-event ?<)
          (save-excursion
            (re-search-backward "#include" (point-at-bol) t)))
         . pair)
        ((and
          (eq major-mode 'c-mode)
          (eq last-command-event ?<))
         . self)
        ))
(flex-autopair-reload-conditions)


(provide '16_flex-autopair)
;;; 16_flex-autopair.el ends here
