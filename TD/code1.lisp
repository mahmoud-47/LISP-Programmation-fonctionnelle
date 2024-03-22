;;1.1

(format t "~d~%" (+ 3 4))
(format t "~f~%" (* 3.2 5.6))
(format t "~a~%" (- (/ 3 4) (/ 5 6)))

;;1.2
(format t "~d~%" (+ 1 2 3 4))
(format t "~d~%" (max 1 2 3 (+ 100 50) 75 3))

;;
(format t "~a~%" (+))
(format t "~a~%" (*))
(format t "~a~%" (/ 2))
(format t "~a~%" (* 2))

;; 1.3
(defun add5(x)
    (+ x 5)
)
(format t "2+5=~a~%" (add5 2))
;;
(defun valabs(x)
    (if (< x 0)
        (- x)
        x
    )
)
(format t "abs(5)=~a~%" (valabs 5))
(format t "abs(-5)=~a~%" (valabs -5))
;;
(defun moyenne(a b)
    (/ (+ a b) 2)
)
(format t "moy(4, 3)=~a=~f~%" (moyenne 4 3) (moyenne 4 3))
;;
(defun somme(n p)
    (if (= n p)
        n
        ( + n (somme (+ n 1) p) )
    )
)
(format t "somme de 3 à 6 = ~a~%" (somme 3 6))
;;
(defun fact(n)
    (if (= n 0)
        1
        (* n (fact (- n 1)))
    )
)
(format t "fact(5)=~a~%" (fact 5))
;;
(defun ffb(init)
    (if (eq (fact init) (fact init))
        (ffb (+ init 1))
        init
    )
)
(format t "ffb=~a~%" (ffb 0))
;;

(defun bign()
    (labels (
        (ffb(init)
            (if (eq (fact init) (fact init))
                (ffb (+ init 1))
                init
            )
        )
    )
    (ffb 0)
    )
)
(format t "big=~a~%" (bign))
;;
(defun nbBits(n)
    (if (= n 0)
        0
        (+ 1 (nbBits (ash n -1) ) )
    )
)
(format t "nbBits=~a~%" (nbBits 3))

(defun iota(n)
    (cond 
        ((= n 0) nil)
        ((= n 1) (list 0))
        (t (cons (- n 1) (iota (- n 1))) )
    )
)
(defun incx(a &rest b)
    (if (atom b)
        a
        (append (car b) (apply #'incx a (cdr b)))
    )
)
(defun concate(L1 L2 &rest r)
    (apply #'append (cons L1 (cons L2 r)))
)

(defun fonc (l1 l2 &rest autres-listes)
  (apply #'append (cons l1 (cons l2 autres-listes))))