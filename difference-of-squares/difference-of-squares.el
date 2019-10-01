;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:


(defun square-of-sum (n)
  "Return square of sum from 1 to `N'."
  (let ((sum (/ (* (1+ n) n) 2)))
    (* sum sum)))

(defun sum-of-squares (n)
  "Return sum of square from 1 to `N'."
  (let ((sum 0)
        (count 1))
    (while (<= count n)
      (setq sum (+ sum (* count count)))
      (setq count (1+ count)))
    sum))

(defun difference (n)
  "Return the difference between sum of squares and square of sum from 1 to `N'."
  (- (square-of-sum n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
