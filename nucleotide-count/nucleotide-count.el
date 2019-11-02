;;; nucleotide-count.el --- nucleotide-count Exercise (exercism)

;;; Commentary:

;;; Code:

(defun nucleotide-count (DNA)
  (let* (result)
    (setf (alist-get ?A result) 0)
    (setf (alist-get ?C result) 0)
    (setf (alist-get ?G result) 0)
    (setf (alist-get ?T result) 0)
    (mapc (lambda (c)
            (setf (alist-get c result) (1+ (alist-get c result))))
          DNA)
    result))

(provide 'nucleotide-count)
;;; nucleotide-count.el ends here
