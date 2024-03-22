#|


(format t "Hello World ~%")
(write "Whats your name")
(defvar *name* (read))
(defun salut(*name*)
    (format t "Hello ~a~%" *name*)
)
(setq *print-case* :Capitalize) ;:upcase :downcase
(salut *name*)
|#
(format t "number with commas ~:d ~%" 10000000)
(format t "n with 5 chars ~5f ~%" 1.1234567)
(format t "n with 4 decimals ~,4f ~%" 1.1234567)
(format t "(expt 4 2) = ~d ~%" (expt 4 2))
(format t "(sqrt 4) = ~d ~%" (sqrt 4))
(format t "(exp 1) = ~d ~%" (exp 1))
(format t "(log 1000 10) = ~d ~%" (log 1000 10)); car 10^3 = 1000
(format t "(floor 5.6) = ~d ~%" (floor 5.6))
(format t "(ceiling 5.6) = ~d ~%" (ceiling 5.6))
(format t "(ceiling 5.1) = ~d ~%" (ceiling 5.1))
(format t "(oddp 5) = ~d ~%" (oddp 5))
(format t "(evenp 5) = ~d ~%" (evenp 5))
(format t "(numberp 5) = ~d ~%" (numberp 5))
(format t "(null nil) = ~d ~%" (null nil))
;
(format t "(equal 5 5) = ~d ~%" (equal 5 5))
(format t "(equalp 5 5.0) = ~d ~%" (equalp 5 5.0))
(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d ~%" (equal (list 1 2 3) (list 1 2 3)))
;
(defvar age 18)
(if (and (>= age 18) (<= age 50)); and or not
    (format t "You can work~%")
    (format t "You cannot work~%")
)

(defvar num 2)
(if (= num 2)
    (progn
        (format t "Num = 2 ")
        (format t "Je repete Num = 2~%")
    )
        (format t "Num dif 2~%")
)

(defun get-school(age)
    (case age
        (17 (format t "tu as 17 ans"))
        (18 (format t "tu as 18 ans"))
        (otherwise (format t "tu as other ans"))
    )
)
(terpri) ;; Retour à la ligne
(get-school age)

#|
(cond 
    ( cond1 
        (action1)
        ...
        (actionn)
    )
    ( cond2
        (action1)
        ...
        (actionn)
    )
    ( t ;else 
        (action1)
        ...
        (actionn)
    )
)
|#
(terpri)
(defvar n 2)
(cond 
    ( (= n 2)
        (format t "Action a")
        (format t "Action b")
    )
    ( (= n 3)
        (format t "Action c")
        (format t "Action d")
    )
    (t
        (format t "Action e")
        (format t "Action f")
    )
)
(terpri)
;
(defvar x 0)
(loop for i from 1 to 3
    do(setq x (+ x i))
)
(print x)

(setq x 1)
(loop
    (format t "~a ~%" x)
    (setq x (+ x 1))
    (when (> x 10) (return x))
)

(loop for i in '(2 5 ansou fatou)
    do(format t "~a ~%" i)
)
;
(format t "First (superman batman aquaman) = ~a ~%" (car '(superman batman aquaman)))
(format t "reste (superman batman aquaman) = ~a ~%" (cdr '(superman batman aquaman)))
(format t "2nd (superman batman aquaman) = ~a ~%" (car (cdr '(superman batman aquaman))))
(format t "2nd (superman batman aquaman) = ~a ~%" (cadr '(superman batman aquaman)))
(format t "other & other (superman batman aquaman souleyman) = ~a ~%" (cddr '(superman batman aquaman souleyman)))
(format t "(cadddr superman batman aquaman souleyman antman) = ~a ~%" (cadddr '(superman batman aquaman souleyman antman)))
;
(defparameter nums '(1 2 3))
(push 4 nums)
(print nums)
(format t "2nd elem : ~d ~%" (nth 2 nums))
;
(defparameter heroes
    '(
        (key1 (value1 value2))
        (key2 (value2 value3))
        (key3 (value3 value4))
    )
)
(format t "Val2 val3 = ~a ~%" (assoc 'key2 heroes))
(format t "key2's first val = ~a ~%" (caadr (assoc 'key2 heroes)))
