;;; grains.el --- Grains exercise (exercism)

;;; Commentary:

;;; Code:

(defun square (n)
  (cond
   ((= n 1) 1.0)
   ((> n 1) (* 2 (square (1- n))))))

(defun total ()
  (1- (square 65)))

(provide 'grains)
;;; grains.el ends here
