;;; 02_popwin.el --- The popup window.
;;; Commentary:
;;; Code:


(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:popup-window-position 'bottom)


(provide '02_popwin)
;;; 02_popwin.el ends here
