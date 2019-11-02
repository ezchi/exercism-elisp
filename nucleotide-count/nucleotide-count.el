;;; nucleotide-count.el --- nucleotide-count Exercise (exercism)

;;; Commentary:

;;; Code:

(defun nucleotide-count (DNA)
  (let* ((result (copy-alist '((?A . 0)
                               (?C . 0)
                               (?G . 0)
                               (?T . 0)))))
    (mapc (lambda (c)
            (setf (alist-get c result) (1+ (alist-get c result))))
          DNA)
    result))

(provide 'nucleotide-count)
;;; nucleotide-count.el ends here
