;;; init.el --- The setting of init-loader
;;; Commentary:
;;; Code:



;;
;; host ごとの設定があれば読み込む
;;
(setq init_host (concat "~/.emacs.d/local/init_" (system-name) ".el"))
(if (file-exists-p init_host)
    (load-file init_host))


;;
;; パッケージ管理(package.el)の設定
;;
(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


;;
;; init-loader
;;
(require 'init-loader)
(setq init-loader-show-log-after-init 'error-only)
(init-loader-load "~/.emacs.d/inits")


;; (custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;  '(flycheck-display-error-function (function flycheck-pos-tip-error-messages))
;;  '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
;;  '(package-selected-packages
;;    (quote
;;     (basic-mode lua-mode init-loader flycheck-pos-tip flycheck company-ghc company haskell-mode popwin google-translate markdown-mode ddskk undo-tree))))
;; (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )


(provide 'init)
;;; init.el ends here
