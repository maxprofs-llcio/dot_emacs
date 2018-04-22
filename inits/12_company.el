;;; 12_company.el --- The package of company.
;;; Commentary:
;;; Code:


;; company-mode を常に ON
(global-company-mode 1)
(add-to-list 'company-backends 'company-ghc)


(provide '12_company)
;;; 12_company.el ends here
