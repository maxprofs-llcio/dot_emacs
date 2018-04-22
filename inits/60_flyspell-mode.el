;;; 60_flyspell-mode.el --- The mode of flyspell.
;;; Commentary:
;;; Code:


(mapc
 (lambda (hook)
   (add-hook hook 'flyspell-mode))
 '(text-mode-hook
   markdow-mode-hook
   org-mode-hook
   wl-draft-mode-hook
   twittering-edit-mode))
(mapc
 (lambda (hook)
   (add-hook hook 'flyspell-prog-mode))
 '(c-mode-common-hook
   emacs-lisp-mode-hook))


(provide '60_flyspell-mode)
;;; 60_flyspell-mode.el ends here
