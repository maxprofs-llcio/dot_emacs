;;; 01_utility.el --- Utility.
;;; Commentary:
;;; Code:


;; 右から左に読む言語に対応させないことで描画高速化
(setq-default bidi-display-reordering nil)


;; splash screen を無効化する
(setq inhibit-splash-screen t)


;; 同じ内容を履歴に残さないようにする
(setq history-delete-duplicates t)


;; C-u C-SPC C-SPC で過去のマークを遡る
(setq set-mark-command-repeat-pop t)


;; 複数のディレクトリで同じファイル名のファイルを開いたときのバッファ名を調整する
(require 'uniquify)


;; filename<dir> 形式のバッファ名にする
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "[^*]+")


;; ファイルを開いた位置を保存する
(require 'saveplace)
(save-place-mode 1)
(setq save-place-file "~/.emacs.d/saved-places")


;; インデントに TAB を使わないようにする
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)


;; ミニバッファ履歴を次回 Emacs 起動時にも保存する
(savehist-mode t)


;; utf-8
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(prefer-coding-system 'utf-8-unix)


;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)


;; 対応するカッコを強調表示
(show-paren-mode t)


;; 時間表示
(display-time)


;; 行番号を表示
(require 'linum)
(global-linum-mode t)
(setq linum-format "%5d | ")
(line-number-mode t)
(column-number-mode t)


;; 現在行を強調
(require 'hl-line)
(setq hl-line-face 'underlin)
(global-hl-line-mode t)


;; theme
(load-theme 'misterioso t)


;; font
(add-to-list 'default-frame-alist '(font . "Fira Code Retina"))
(set-fontset-font t 'japanese-jisx0208 "TakaoGothic")
;;(add-to-list 'face-font-rescale-alist '(".*Takao.*" . 0.87))


;; GC を減らして軽くする
(setq gc-cons-threshold (* 10 gc-cons-threshold))


;; ログの記録行数を増やす
(setq message-log-max 100000)


;; 履歴をたくさん保存する
(setq history-length 100000)


;; メニューバーとツールバーとスクロールバーを消す
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)


;; ビープ音を消す
(setq visible-bell t)


;; 定義箇所までジャンプ
(setq dumb-jump-mode t)


;; git-gutter+
(global-git-gutter+-mode 1)

;; modify された箇所で実行すると、diff を inline で見ることができる
(global-set-key (kbd "C-x C-v") 'git-gutter+-show-hunk-inline-at-point)


(provide '01_utility)
;;; 01_utility.el ends here
