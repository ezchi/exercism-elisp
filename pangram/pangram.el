;;; pangram.el --- Pangram (exercism)

;;; Commentary:

;;; Code:

(defun is-pangram (str)
  "Return non-nil if STR is pangram."
  (let ((table (make-hash-table)))
    (mapc (lambda (c)
            (when (or (<= ?a c ?z)
                      (<= ?A c ?Z))
              (puthash (downcase c) 1 table)))
          str)
    (= 26 (hash-table-count table))))


(provide 'pangram)
;;; pangram.el ends here
