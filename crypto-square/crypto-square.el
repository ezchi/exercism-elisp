;;; crypto-square.el --- Crypto Square (exercism)

;;; Commentary:

;;; Code:

(require 'subr-x)
(require 'seq)
(require 'cl-lib)

(defun encipher (s)
  (let* ((s (replace-regexp-in-string "[^0-9a-z]" "" (downcase s)))
         (rows (ceiling (sqrt (length s))))
         (fmt (format "%%-%ds" rows)))
    (if (= 0 (length s))
        ""
      (string-join (thread-last (seq-partition s rows)
                     (mapcar (lambda(c) (format fmt c)))
                     (apply #'mapcar* #'string))
                   " "))))

(provide 'crypto-square)
;;; crypto-square.el ends here
