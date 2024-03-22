;; (defun carre(x) (* x x))
;; (defun fonc(f)
;;     (apply f 5 ())
;; )
;; (write (fonc #'carre) )

;; (defun pr(a &rest z)
;;     (if (atom z)
;;         a
;;         (* a (car z) (apply #'pr 1 (cdr z) ))
;;     )
;; )

;; (write (pr 3 4 4))

    ;; (defun conc(l1 l2 &rest ls)
    ;;     (if (atom ls)
    ;;         (append l1 l2)
    ;;         (append (apply #'conc l1 l2 (cdr ls)) (car ls) )
    ;;     )
    ;; )

    ;; (write (conc '(1 2) '(3 4) '(5 6) '(7 8)))

;; (defun fonc(f)
;;     (apply f 1 ())
;; )
;; (write (fonc #'(lambda(x)(+ (* 3 x x) 1.5))))

;; (defun figma(f n p)
;;     (if (= n p)
;;         (apply f (list p))
;;         (+ (apply f n ()) (figma f (+ n 1) p))
;;     )
;; )
;; (write (figma #'(lambda(x)(* x x)) 1 3))

;; (defun figma(f n p)
;;     (if (= n p)
;;         (funcall f p)
;;         (+ (funcall f n) (figma f (+ n 1) p))
;;     )
;; )
;; (write (figma #'(lambda(x)(* x x)) 1 3))

(defun map*(f l)
    (if (null l)
        ()
        (cons (funcall f (car l)) (map* f (cdr l)))
    )
)
(write (map* #'(lambda(x)(* x x)) '(1 2 3 4)))

