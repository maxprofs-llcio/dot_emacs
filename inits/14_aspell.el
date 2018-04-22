;;; 14_aspell.el --- The package of aspell.
;;; Commentary:
;;; Code:


;; スペルチェックに aspell を使う
(setq-default ispell-program-name "aspell")

;; 日本語と英語の共存設定
(with-eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))


(provide '14_aspell)
;;; 14_aspell.el ends here
