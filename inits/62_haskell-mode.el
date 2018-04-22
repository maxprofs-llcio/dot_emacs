;;; 62_haskell-mode.el --- The mode of haskell.
;;; Commentary:
;;; Code:


(autoload 'haskell-mode "haskell-mode" nil t)
(autoload 'haskell-cabal "haskell-cabal" nil t)

(add-to-list 'auto-mode-alist '("\\.hs" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . literate-haskell-mode))
(add-to-list 'auto-mode-alist '("\\.cabal$" . haskell-cabal-mode))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)


(defun my-haskell-mode-hook ()
  (interactive)
  ;; インデント
  (turn-on-haskell-indentation)
  (turn-on-haskell-doc-mode)
  (font-lock-mode)
  (imenu-add-menubar-index)
  ;; GHCi のコマンドを設定
  (setq haskell-program-name "/usr/bin/stack ghci") ;; stack の場合
  (inf-haskell-mode)
  ;; ghc-mod を使えるように
  (ghc-init)
  ;; flycheck を起動
  (flycheck-mode))
(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)


(provide '62_haskell-mode)
;;; 62_haskell-mode.el ends here
