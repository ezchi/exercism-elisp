;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:


(defun square-of-sum (n)
  "Return square of sum from 1 to `N'."
  (expt (/ (* (1+ n) n) 2) 2))

(defun sum-of-squares (n)
  "Return sum of square from 1 to `N'."
  (/ (* n (1+ n) (1+ (* n 2))) 6))

(defun difference (n)
  "Return the difference between sum of squares and square of sum from 1 to `N'."
  (- (square-of-sum n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
