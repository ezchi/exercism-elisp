;;; acronym.el --- Acronym (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun acronym (str)
  (let* ((s (s-replace-regexp "[^a-zA-Z]" " " str))
         (words (split-string s " " t)))
    (mapconcat (lambda (w)
                 (upcase (substring w 0 1)))
               words "")))

(provide 'acronym)
;;; acronym.el ends here
