;;; phone-number.el --- phone-number Exercise (exercism)

;;; Commentary:

;;; Code:

(defun extract-number (str)
  "Get numbers from input STR."
  (replace-regexp-in-string "[^0-9]" "" str))

(defun numbers (str)
  "Return phone number from input STR or 10 `0' if is not right phone number."
  (let* ((num (extract-number str))
         (len (length num))
         (prefix-one-p (string-prefix-p "1" num)))
    (cond
     ((= len 10) num)
     ((and (= len 11) prefix-one-p) (substring num 1))
     (t "0000000000"))))

(defun area-code (str)
  (substring (numbers str) 0 3))

(defun pprint (str)
  (let ((num (numbers str)))
    (format "(%s) %s-%s" (substring num 0 3) (substring num 3 6) (substring num 6))))

(provide 'phone-number)
;;; phone-number.el ends here
