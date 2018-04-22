;;; 11_undo-tree.el --- The package of undo-tree.
;;; Commentary:
;;; Code:


;; unto-tree を読み込む
(require 'undo-tree)

;; undo-tree を起動時に有効にする
(global-undo-tree-mode 1)

;; M-/ を redo に設定する
(global-set-key (kbd "M-/") 'undo-tree-redo)


(provide '10_undo-tree)
;;; 11_undo-tree.el ends here
