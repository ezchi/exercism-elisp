;;; perfect-numbers.el --- perfect-numbers Exercise (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun aliquot-sum (n)
  "Calculates aliquot sum of N."
  (let ((sum 1))
    (if (= n 1)
        0
      (mapc (lambda (d)
              (when (zerop (mod n d))
                (cl-incf sum d)))
            (number-sequence 2 (/ (1+ n) 2)))
      sum)))

(defun classify (number)
  "Do something with NUMBER here."
  (cond
   ((< number 0) (error "Classification is only possible for natural numbers"))
   ((= number (aliquot-sum number)) 'perfect)
   ((< number (aliquot-sum number)) 'abundant)
   ((> number (aliquot-sum number)) 'deficient)))

(provide 'perfect-numbers)
;;; perfect-numbers.el ends here
