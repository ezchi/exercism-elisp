;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun split-sort-string (str)
  "Split STR to char list and return the sorted list."
  (sort (delete "" (split-string (downcase str) "")) 'string<))

(defun anagrams-for (str candidates)
  "Return anagrams sublist of STR from CANDIDATES."
  (let ((sorted-str (split-sort-string str))
        (result (list)))
    (mapc (lambda (c)
            (message c)
            (when (and (not (string= str c))
                       (equal sorted-str (split-sort-string c)))
              (add-to-list 'result c t)))
          candidates)
    result))

(provide 'anagram)
;;; anagram.el ends here
