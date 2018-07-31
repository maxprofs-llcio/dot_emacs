;;; 65_vbasense.el ---  Visual Basic Editorと同様の環境
;;; Commentary:
;;; Code:


(require 'vbasense)

;; キーバインド
(setq vbasense-popup-help-key "C-:")
(setq vbasense-jump-to-definition-key "C->")

;; 必要に応じて適宜カスタマイズして下さい。以下のS式を評価することで項目についての情報が得られます。
;; (customize-group "vbasense")

;; 推奨設定を行う
(vbasense-config-default)


(provide '65_vbasense)
;;; 65_vbasense.el ends here
