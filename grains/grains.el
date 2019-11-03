;;; grains.el --- Grains exercise (exercism)

;;; Commentary:

;;; Code:

(defun square (n)
  (cond
   ((= n 1) 1e+0)
   ((> n 1) (* 2 (square (1- n))))))

(defun total ()
  (let ((sum 0))
    (mapc (lambda (i)
            (setq sum (+ sum (square i))))
          (number-sequence 1 64))
    sum))

(provide 'grains)
;;; grains.el ends here
