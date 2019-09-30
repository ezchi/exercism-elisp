;;; binary.el --- Binary exercise (exercism)

;;; Commentary:

;;; Code:

(defun to-decimal (bin)
  "Convert string presented binary to decimal."
  (let ((result 0)
        (wrong-format nil))
    (mapc (lambda (b)
            (if (<= ?0 b ?1)
                (setq result (+ (* result 2) (- b ?0)))
              (setq wrong-format t)))
          bin)
    (if wrong-format
        0
      result)))



(provide 'binary)
;;; binary.el ends here
