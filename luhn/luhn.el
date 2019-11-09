;;; luhn.el --- Luhn exercise (exercism)

;;; Commentary:

;;; Code:

(defun luhn-p (s)
  (let* ((s (replace-regexp-in-string " " "" s))
         (size (length s))
         (evenp (= 0 (mod size 2))))
    (if (< size 2)
        nil
      (= 0 (mod (seq-reduce #'+
                            (mapcar (lambda (c)
                                      (let* ((d (- c ?0))
                                             (dd (* 2 d)))
                                        (if (not (<= ?0 c ?9))
                                            (error "invalid input")
                                          (if evenp
                                              (progn
                                                (setq evenp (not evenp))
                                                (if (> dd 9)
                                                    (- dd 9)
                                                  dd))
                                            (setq evenp (not evenp))
                                            d))))
                                    s)
                            0) 10)))))


(provide 'luhn)
;;; luhn.el ends here
