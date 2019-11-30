;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

(defun split-sort-string (str)
  "Split STR to char list and return the sorted list."
  (sort (split-string (downcase str) "" t "") 'string<))

(defun anagrams-for (str candidates)
  "Return anagrams sublist of STR from CANDIDATES."
  (let ((sorted-str (split-sort-string str)))
    (seq-filter (lambda (c)
                  (when (and (not (string= str c))
                             (equal sorted-str (split-sort-string c)))
                    c))
                candidates)))

(provide 'anagram)
;;; anagram.el ends here
