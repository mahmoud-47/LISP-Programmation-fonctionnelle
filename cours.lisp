(if (> 2 3) "oui" "non")
#|
&optional(z 4 zp) 4 par defaut et zp qui prend true si le dernier a ete donné
&rest liste des surplus 
&key (:z 5)
|#
(defun fact(n) (
    if (= n 0)
        1
        (* n (fact (- n 1)))
))


(write (fact 4))
;cdr : reste de la liste privée du premier (cdr (+ 1 2 3)) -> (1 2 3)
;car : retourne le 1e element (car (+ 1 2 3)) -> +
;(list 1 2 3) retourne la liste (1 2 3)
;(listp '(1 2 3)) retourne T ou nil si le parametre est une liste ou pas

(defun membeer(x ll) 
    (if (atom ll)
        nil
        (if (eql x (car ll))
            ll
            (membeer x (cdr ll))
        )
    )
)

(write-line (membeer 3 '(1 2 3 4 5)))
;labels : fonctions locales (ne pas oublier les parentheses de labels)
;(labels   ( (function1) (function2)... )   (appel) )

(defun plus1(n)
    (labels ( 
            (plus1*t (k)
                (+ 1 k)
            ) 
        )
        (plus1*t n)
        
    )
)

(write-line (plus1 7))

(defun somme(&rest z)
    (if (atom z)
        0
        (+ (car z) (apply #somme (cdr z)))
    )
)

(write-line (somme 1 2 3))

(defun profondeur(L)
    (labels
        (
            (prof*(L d)
                (cond
                    ((atom L) d)
                    ((listp (car l)) (max (prof* (car L) (+ d 1)) (prof* (cdr L) d)))
                    (t (prof* (cdr L) d))
                )
            )
        )
        (prof* L 1)
    )
)

(defun hunion(l1 l2)
    (cond
        ((atom l2) l1)
        ((member (car l2) l1) (hunion l1 (cdr l2)))
        (t (append  (hunion l1 (cdr l2)) (list (car l2)) ))
    )
)

(write (mapcar #'* '(1 2) '(3 4 5 6)) ) 
(reduce (lambda (x y) (+ (* x 10) y)) '(1 2 3 4))