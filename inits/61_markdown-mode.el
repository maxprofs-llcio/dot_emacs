;;; 61_markdown-mode.el --- The mode of markdown.
;;; Commentary:
;;; Code:


(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" 1)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))


(provide '61_markdowon-mode)
;;; 61_markdown-mode.el ends here
