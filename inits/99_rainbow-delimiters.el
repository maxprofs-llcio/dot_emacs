;;; 99_rainbow-delimiters.el --- 対応する括弧をカラフルにする
;;; Commentary:
;;; Code:


;; rainbow-delimiters を使うための設定
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)


;; 括弧の色を強調する設定
(require 'cl-lib)
(require 'color)
(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
    (cl-callf color-saturate-name (face-foreground face) 100))))
(add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors)


(provide '99_rainbow-delimiters)
;;; 99_rainbow-delimiters.el ends here
