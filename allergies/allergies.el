;;; allergies.el --- Allergies Exercise (exercism)

;;; Commentary:

;;; Code:

(require 'seq)

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
  (seq-filter (lambda (a)
                (allergic-to-p score a))
              (mapcar 'car allergies--allergies-alist)))

(defun allergic-to-p (score allergy)
  "Return if the SCORE include ALERGIC."
  (let* ((score (mod score allergies--score-up-limit)))
    (/= 0 (logand score (cdr (assoc allergy allergies--allergies-alist))))))

(provide 'allergies)
;;; allergies.el ends here
