;;; acronym.el --- Acronym (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun acronym (str)
  (let* ((words (split-string str "[^a-zA-Z]" t)))
    (mapconcat (lambda (w)
                 (upcase (substring w 0 1)))
               words "")))

(provide 'acronym)
;;; acronym.el ends here
