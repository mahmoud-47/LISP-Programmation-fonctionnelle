(defclass animal()
    (name sound)
)

(defparameter dog (make-instance 'animal))

(setf (slot-value dog 'name) "Trecy")
(setf (slot-value dog 'sound) "Woof")

(format t "~a says ~a~%" (slot-value dog 'name) (slot-value dog 'sound))

(defun supprimer-occurences (lst x)
  (cond
    ((null lst) '()) ; Si la liste est vide, renvoyer une liste vide
    ((eql (car lst) x) (supprimer-occurences (cdr lst) x)) ; Si l'élément courant est égal à x, sauter l'élément et continuer avec le reste de la liste
    (t (cons (car lst) (supprimer-occurences (cdr lst) x))) ; Sinon, conserver l'élément courant et continuer avec le reste de la liste
  )
)

;; Exemple d'utilisation
(let ((ma-liste '(1 2 3 2 4 2 5)))
  (format t "Liste originale : ~a~%" ma-liste)
  (setq ma-liste (supprimer-occurences ma-liste 2))
  (format t "Liste après suppression : ~a~%" ma-liste))
