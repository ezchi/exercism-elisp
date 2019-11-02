;;; nucleotide-count.el --- nucleotide-count Exercise (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun nucleotide-count (DNA)
  (let* ((result (copy-alist '((?A . 0)
                               (?C . 0)
                               (?G . 0)
                               (?T . 0)))))
    (mapc (lambda (c)
            (cl-incf (alist-get c result)))
          DNA)
    result))

(provide 'nucleotide-count)
;;; nucleotide-count.el ends here
