;;; etl.el --- etl Exercise (exercism)

;;; Commentary:

;;; Code:

(defun etl (in)
  "Swap hash table key value."
  (let ((out (make-hash-table)))
    (maphash (lambda (key value)
               (when (< key 0)
                 (error "Negative key"))
               (mapc (lambda (c)
                       (unless (stringp c)
                         (error "Value element is not a string"))
                       (puthash (downcase c) key out))
                     value))
             in)
    out))

(provide 'etl)
;;; etl.el ends here
