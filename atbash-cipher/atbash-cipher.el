;;; atbash-cipher.el --- Atbash-Cipher (exercism)

;;; Commentary:




;;; Code:

(require 'subr-x)

(defun encode (plaintext)
  "Encode PLAINTEXT to atbash-cipher encoding."
  (string-trim
   (replace-regexp-in-string
    "\\(.\\{5\\}\\)"
    "\\1 "
    (apply 'string
           (mapcar
            (lambda (c) (if (<= ?a c ?z) (- ?z (- c ?a)) c))
            (replace-regexp-in-string "[^a-z0-9]" "" (downcase plaintext)))))))

(provide 'atbash-cipher)
;;; atbash-cipher.el ends here
