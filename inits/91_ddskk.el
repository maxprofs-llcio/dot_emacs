;;; 91_ddskk.el --- The package of ddskk.
;;; Commentary:
;;; Code:


(when (require 'skk nil t)
  (global-set-key (kbd "C-x C-j") 'skk-mode)
  (global-set-key (kbd "C-x j") 'skk-auto-fill-mode)
  (setq default-input-method "japanese-skk")
  (require 'skk-study))

;; インクリメント検索
(add-hook 'isearch-mode-hook
          #'(lambda ()
              (when (and (boundp 'skk-mode)
                         skk-mode
                         skk-isearch-mode-enable)
                (skk-isearch-mode-setup))))
(add-hook 'isearch-mode-end-hook
          #'(lambda ()
              (when (and (featurep 'skk-isearch)
                         skk-isearch-mode-enable)
                (skk-isearch-mode-cleanup))))

;; 半角カナを入力
(setq skk-use-jisx0201-input-method t)

;; Enter で改行しない
(setq skk-egg-like-newline t)

;; "「" を入力したら "」" も自動で挿入
(setq skk-quto-insert-paren t)

;; 句読点変換ルール
(setq skk-kuten-touten-alist
      '(
        (jp . ("。" . "、"))
        (en-jp . ("．" . "，"))
        (en . (". " . ", "))
        ))
(setq-default skk-kutouten-type 'en)

;; 全角記号の変換: @ での日付入力は使わない
(setq skk-rom-kana-rule-list
      (append skk-rom-kana-rule-list
              '(("!" nil "!")
                (":" nil ":")
                (";" nil ";")
                ("?" nil "?")
                ("z " nil " ")
                ("\\" nil "\\")
                ("@" nil "@")
                )))

;; 送り仮名が厳密に正しい候補を優先
(setq skk-henkan-strict-okuri-precedence t)


(provide '13_ddskk)
;;; 91_ddskk.el ends here
