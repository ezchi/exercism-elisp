;;; allergies.el --- Allergies Exercise (exercism)

;;; Commentary:

;;; Code:

(defconst allergies--score-up-limit 256
  "Up limit of allergy score.")

(defconst allergies--allergies-alist '(("eggs" . 1)
                                       ("peanuts" . 2)
                                       ("shellfish" . 4)
                                       ("strawberries" . 8)
                                       ("tomatoes" . 16)
                                       ("chocolate" . 32)
                                       ("pollen" . 64)
                                       ("cats" . 128))
  "Allergies list.")

(defun allergen-list (score)
  "Generate allergies list from SCORE."
  (let* ((score (mod score allergies--score-up-limit))
         allergies)
    (mapc (lambda (a)
            (when (> (logand score (cdr a)) 0)
              (add-to-list 'allergies (car a) 'append)))
          allergies--allergies-alist)
    allergies))

(defun allergic-to-p (score allergy)
  "Return if the SCORE include ALERGIC."
  (let* ((score (mod score allergies--score-up-limit)))
    (> (logand score (cdr (assoc allergy allergies--allergies-alist))) 0)))

(provide 'allergies)
;;; allergies.el ends here
