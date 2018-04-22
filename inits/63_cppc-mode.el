;;; 63_cppc-mode.el --- The mode of c/cpp.
;;; Commentary:
;;; Code:


;; ホックを使った設定
(defun my-c-c++-mode-init ()
  (setq c-basic-offset 4)
  )
(add-hook 'c-mode-hook 'my-c-c++-mode-init)
(add-hook 'c++-mode-hook 'my-c-c++-mode-init)


(provide '63_cppc-mode)
;;; 63_cppc-mode.el ends here
