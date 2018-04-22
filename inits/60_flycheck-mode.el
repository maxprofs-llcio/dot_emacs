;;; 60_flycheck-mode.el --- The mode of flycheck.
;;; Commentary:
;;; Code:


(add-hook 'after-init-hook #'global-flycheck-mode)


;; flycheck-pos-tip
(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))


(provide '60_flycheck-mode)
;;; 60_flycheck-mode.el ends here
