;;; atbash-cipher.el --- Atbash-Cipher (exercism)

;;; Commentary:




;;; Code:
(defun encode-char (c)
  (setq index (1+ index))
  (when (= (% index 6) 0)
    (setq index (1+ index))
    (setq ciphertext (format "%s " ciphertext)))
  (setq ciphertext (format "%s%c" ciphertext c)))

(defun encode (plaintext)
  "Encode PLAINTEXT to atbash-cipher encoding."
  (let ((plaintext (downcase plaintext))
        (index 0)
        (ciphertext ""))
    (mapc (lambda (c)
            (when (<= ?a c ?z)
              (encode-char (- ?z (- c ?a))))
            (when (<= ?0 c ?9)
              (encode-char c)))
          plaintext)
    ciphertext))


(provide 'atbash-cipher)
;;; atbash-cipher.el ends here
