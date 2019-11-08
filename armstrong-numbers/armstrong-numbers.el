;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)

;;; Commentary:

;;; Code:

(defun armstrong-p (n)
  (let* ((str (number-to-string n))
         (len (length str))
         (sum 0))
    (mapc (lambda (c)
            (setq sum (+ sum (expt (- c ?0) len))))
          str)
    (= n sum)))

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here