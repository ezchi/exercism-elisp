;;; grains.el --- Grains exercise (exercism)

;;; Commentary:

;;; Code:

(defun square (n)
  (expt 2.0 (1- n)))

(defun total ()
  (1- (square 65)))

(provide 'grains)
;;; grains.el ends here
