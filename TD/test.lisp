;; (defun fonc (l1 l2 &rest autres-listes)
;;   (apply #'append (cons l1 (cons l2 autres-listes))))

;; (print (fonc '(1 2) '(3 4) '(5 6) '(7 8)))

;; (defun fonc (l1 l2 &rest autres-listes)
;;   (loop for i in autres-listes do
;;     ()
;;   )
;; )
;; (defun dernierparam (&rest l)
;;     (cond
;;         ((= (length l) 1) (car l))
;;         (t (apply #'dernierparam (cdr l)))
;;     )
;; )
;; (write (dernierparam 1 3 5 8 65))

;; (defun concate(L1 L2 &rest r)
;;     (apply #'append (cons L1 (cons L2 r)))
;; )

;; (write (concate '(1 2) '(3 4) '(5 6) '(7 8)))

(defun inter(L1 L2)
    (cond
        ((null L1) nil)
        ((member (car L1) L2) (cons (car L1) (inter (cdr L1) L2) ))
        (t (inter (cdr L1) L2))
    )
)
(write (inter '(1 2 7 3 9 4) '(3 5 4 10) ))