;;; 99_keybinds.el --- The setting of keybinds.
;;; Commentary:
;;; Code:


;; C-h をバックスペースに変更
(keyboard-translate ?\C-h ?\C-?)


;; reload
(global-set-key [f12] 'eval-buffer)


;; C-x o -> C-t
;;(global-set-key (kbd "C-t") 'other-window)



(provide '99_keybinds)
;;; 99_keybinds.el ends here
