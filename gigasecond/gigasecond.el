;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:

(require 'cl-extra)

(defun from (second min hour day mon year)
  "Calculates the date 1G seconds from the given date."
  (cl-subseq (decode-time (+ (expt 10 9) (time-to-seconds (encode-time second min hour day mon year t))) t) 0 6))

(provide 'gigasecond)
;;; gigasecond.el ends here
