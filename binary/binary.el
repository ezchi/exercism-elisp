;;; binary.el --- Binary exercise (exercism)

;;; Commentary:

;;; Code:

(defun to-decimal (bin)
  "Convert string presented binary to decimal."
  (let ((bins (delete "" (split-string bin "")))
        (result 0))
    (mapc (lambda (b)
            (setq result (+ (* result 2) (string-to-number b))))
          bins)
    result))



(provide 'binary)
;;; binary.el ends here
