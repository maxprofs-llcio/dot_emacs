;;; 61_markdown-mode.el --- The mode of markdown.
;;; Commentary:
;;; Code:


(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" 1)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))

;; Do not change font in code block
(set-face-attribute 'markdown-code-face nil :inherit 'default)
(set-face-attribute 'markdown-inline-code-face nil
                    :inherit 'default
                    :foreground (face-attribute font-lock-type-face :foreground))
(setq markdown-fontify-code-blocks-natively t)

(provide '61_markdowon-mode)
;;; 61_markdown-mode.el ends here
