;;; 90_custom.el --- customize の出力先設定
;;; Commentary:
;;; Code:


(setq custom-file "~/.emacs.d/custom-file.el")
(if (file-exists-p (expand-file-name "~/.emacs.d/custom-file.el"))
    (load (expand-file-name custom-file) t nil nil))


(provide '90_custom)
;;; 90_custom.el ends here
