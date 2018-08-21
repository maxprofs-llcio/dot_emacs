;;; 99_keybinds.el --- The setting of keybinds.
;;; Commentary:
;;; Code:


;; C-h をバックスペースに変更
(keyboard-translate ?\C-h ?\C-?)


;; reload
(global-set-key [f12] 'eval-buffer)


(global-set-key (kbd "H-i") (kbd "C-i"))


(global-set-key [C-down-mouse-1] nil)



;; C-x o -> C-t
;;(global-set-key (kbd ""C-t") 'other-window)



(provide '99_keybinds)
;;; 99_keybinds.el ends here
