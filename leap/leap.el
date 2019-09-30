;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:

(defun leap-year-p (year)
  "Return `t' if YEAR is leap year."
  (cond
   ((= (mod year 400) 0) t)
   ((= (mod year 100) 0) nil)
   ((= (mod year 4) 0) t)
   (t nil)))

(provide 'leap)
;;; leap.el ends here
