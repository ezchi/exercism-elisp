;;; raindrops.el --- Raindrops (exercism)

;;; Commentary:

;;; Code:

(defvar raindrop--alist (list (cons 3 "Pling")
                              (cons 5 "Plang")
                              (cons 7 "Plong")))

(defun convert (n)
  "Convert integer N to its raindrops string."
  (let ((speak ""))
    (mapc (lambda (a)
            (when (= (mod n (car a)) 0)
              (setq speak (format "%s%s" speak (cdr a)))))
          raindrop--alist)
    (if (string= speak "")
        (format "%s" n)
      speak)))


(provide 'raindrops)
;;; raindrops.el ends here
