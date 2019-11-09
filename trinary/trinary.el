;;; trinary.el --- Trinary (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun trinary-to-decimal (s)
  (let* ((sum 0)
         (len (length s)))
    (catch 'invalid
      (mapc (lambda (c)
              (if (not (<= ?0 c ?2))
                  (throw 'invalid 0)
                (setq len (1- len))
                (setq sum (+ sum (* (- c ?0) (expt 3 len))))))
            s)
      sum)))

(provide 'trinary)
;;; trinary.el ends here
