;;; run-length-encoding.el --- run-length-encoding Exercise (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun concate-char (n c)
  (if c
      (if (= n 1)
          (format "%c" c)
        (format "%0d%c" n c))
    ""))

(defun run-length-encode (str)
  (let* ((cnt 0)
         (char nil)
         (result "")
         (case-fold-search nil))
    (mapc (lambda (x)
            (if (not char)
                (progn
                  (setq cnt 1)
                  (setq char x))
              (if (char-equal x char)
                  (cl-incf cnt)
                (setq result (format "%s%s" result (concate-char cnt char)))
                (setq cnt 1)
                (setq char x))))
          str)
    (format "%s%s" result (concate-char cnt char))))

(defun run-length-decode (str)
  (let* ((cnt 0)
         (result ""))
    (mapc (lambda (c)
            (if (< ?0 c ?9)
                (setq cnt (+ (- c ?0) (* cnt 10)))
              (setq result (format "%s%s" result (make-string (max cnt 1) c)))
              (setq cnt 0)))
          str)
    result))

(provide 'run-length-encoding)
;;; run-length-encoding.el ends here
