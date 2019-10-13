;;; robot-name.el --- Robot Name (exercism)

;;; Commentary:
;;
;; Build a robot with a name like AA000, that can be reset
;; to a new name. Instructions are in README.md
;;

;;; Code:

(defun robot--random-char (start limit)
  "Get random charactor from START to START+LIMIT."
  (+ start (random limit)))

(defun robot--random-name ()
  "Generate random name."
  (format "%c%c%03d" (robot--random-char ?A 26) (robot--random-char ?A 26) (random 1000)))

(defun build-robot ()
  "Build a robot with random name."
  (plist-put nil :name (robot--random-name)))

(defun robot-name (robot)
  "Return name of ROBOT."
  (plist-get robot :name))

(defun reset-robot (robot)
  "Generate new name for ROBOT"
  (plist-put robot :name (robot--random-name)))

(provide 'robot-name)
;;; robot-name.el ends here
