;;; pangram.el --- Pangram (exercism)

;;; Commentary:

;;; Code:

(require 'cl)
(require 'seq)

(defun is-pangram (str)
  "Return non-nil if STR is pangram."
  (= 26 (count-if (lambda (c) (<= ?a c ?z)) (seq-uniq (downcase str)))))


(provide 'pangram)
;;; pangram.el ends here
