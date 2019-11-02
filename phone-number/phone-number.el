;;; phone-number.el --- phone-number Exercise (exercism)

;;; Commentary:

;;; Code:

(require 'subr-x)
(require 's)

(defun numbers (str)
  "Return phone number from input STR or 10 `0' if is not right phone number."
  (let* ((num (s-replace-regexp "[^0-9]" "" str)))
    (or (cadr (s-match "^1?\\([1-9][0-9]\\{9\\}\\)$" num))
        "0000000000")))

(defun area-code (str)
  (substring (numbers str) 0 3))

(defun pprint (str)
  (let ((num (numbers str)))
    (format "(%s) %s-%s" (substring num 0 3) (substring num 3 6) (substring num 6))))

(provide 'phone-number)
;;; phone-number.el ends here
