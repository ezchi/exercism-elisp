;;; crypto-square.el --- Crypto Square (exercism)

;;; Commentary:

;;; Code:

(defun encipher (s)
  (let* ((s (replace-regexp-in-string "[^0-9a-z]" "" (downcase s)))
         (row (ceiling (sqrt (length s))))
         (col (if (< (* (1- row) row) (length s))
                  row
                (1- row)))
         (r (format "\\([0-9a-z ]\\{%0d\\}\\)" col))
         (row-index 0)
         (col-index 0)
         (result (make-vector (* row col) ?\ )))
    (if (= 0 (length s))
        ""
      (mapc (lambda (c)
              (aset result (+ (* row-index col) col-index) c)
              (setq row-index (1+ row-index))
              (when (= row-index row)
                (setq row-index 0)
                (setq col-index (1+ col-index))))
            s)
      (substring (replace-regexp-in-string r "\\1 " (concat result)) 0 (+ (1- row) (* row col))))))


(provide 'crypto-square)
;;; crypto-square.el ends here
