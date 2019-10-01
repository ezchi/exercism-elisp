;;; binary.el --- Binary exercise (exercism)

;;; Commentary:

;;; Code:

(require 'cl-seq)

(defun to-decimal (s)
  "Convert string presented binary to decimal."
  (condition-case nil
      (cl-reduce (lambda (c x)
                   (if (<= ?0 x ?1)
                       (+ (* 2 c) (- x ?0))
                     (signal 'error x)))
                 s
                 :initial-value 0)
    (error 0)))


(provide 'binary)
;;; binary.el ends here
