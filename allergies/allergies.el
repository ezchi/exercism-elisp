;;; allergies.el --- Allergies Exercise (exercism)

;;; Commentary:

;;; Code:

(defconst allergies--up-limit 256
  "Up limit of allergy score.")

(defconst allergies--allergies-list '(("eggs" . 1)
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
  (let* ((score (mod score allergies--up-limit))
         allergies)
    (mapc (lambda (a)
            (when (> (logand score (cdr a)) 0)
              (add-to-list 'allergies (car a) 'append)))
          allergies--allergies-list)
    allergies))

(defun allergic-to-p (score allergic)
  "Return if the SCORE include ALERGIC."
  (let* ((score (mod score allergies--up-limit)))
    (> (logand score (cdr (assoc allergic allergies--allergies-list))) 0)))

(provide 'allergies)
;;; allergies.el ends here
