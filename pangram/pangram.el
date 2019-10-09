;;; pangram.el --- Pangram (exercism)

;;; Commentary:

;;; Code:

(defun is-pangram (str)
  "Return non-nil if STR is pangram."
  (let ((table (make-hash-table)))
    (mapc (lambda (c)
            (when (<= ?a c ?z)
              (puthash c 1 table)))
          (downcase str))
    (= 26 (hash-table-count table))))


(provide 'pangram)
;;; pangram.el ends here
