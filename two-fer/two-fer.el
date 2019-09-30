;;; two-fer.el --- Two-fer Exercise (exercism)

;;; Commentary:

;;; Code:

(defun two-fer (&optional name)
  "If NAME is non-nil, print `One for NAME, one for me`.
Otherwise, print `One for you, one for me`"
  (let ((name (or name "you")))
    (format "One for %s, one for me." name)))

(provide 'two-fer)
;;; two-fer.el ends here
