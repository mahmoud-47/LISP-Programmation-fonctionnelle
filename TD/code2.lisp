(defun memberr(x l)
    (cond
        ((atom l) ())
        ((eq (car l) x) l)
        (t (memberr x (cdr l)))
    )
)
(format t "~a~%" (memberr 3 '(1 2 3 4 5 6 7)))
;
(defun supprimer(x l)
    (cond
        ((atom l) ())
        ((eq (car l) x) (supprimer x (cdr l)))
        ( t (cons (car l) (supprimer x (cdr l))) )
    )
)
(format t "~a~%" (supprimer 3 '(1 2 3 4 5 3 7)))
;
(defun dernier(l)
    (if (atom (cdr l))
        (car l)
        (dernier (cdr l))
    )
)
(format t "~a~%" (dernier (list 1 2 3 4)))
;
(defun nieme(n l)
    (if (<= n 0)
        (car l)
        (nieme (- n 1) (cdr l))
    )
)
(format t "~a~%" (nieme 7 (list 1 2 3 4)))
;
(defun niemecdr(n l)
    (if (<= n 0)
        l
        (niemecdr (- n 1) (cdr l))
    )
)
(format t "~a~%" (niemecdr 1 (list 1 2 3 4)))
;


;; (defun indice(x l pos)
;;     (cond
;;         ((null l) ())
;;         ((= (car l) x) pos)
;;         (t (indice x (cdr l) (+ pos 1)))
;;     )
;; )
;; (format t "~a~%" (indice 3 (list 1 2 3 8 4) 0))

(defun indiceElem(x l)
    (labels (
        (indice(x l pos)
            (cond
                ((null l) ())
                ((= (car l) x) pos)
                (t (indice x (cdr l) (+ pos 1)))
            )
        )
    )
    (indice x l 0)
    )
)
(format t "~a~%" (indiceElem 3 (list 1 2 3 8 4)))
;
(defun compter(x l)
    (cond
        ((null l) 0)
        ((= (car l) x) (+ 1 (compter x (cdr l))))
        (t (compter x (cdr l)))
    )
)
(format t "~a~%" (compter 3 (list 1 3 2 3 3 8 3 4)))
;


