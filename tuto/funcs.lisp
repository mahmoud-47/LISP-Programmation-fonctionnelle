(setq print-case :capitalize)
(defun print-vals (a b &optional c d)
    (format t "~a ~%" (list a b c d))
)
(print-vals 7 8 9)

(defun somme (&rest nums)
    (setq s 0)
    (dolist (num nums)
        (setf s (+ s num))
    )
    s
)
(print (somme 1 2 3))
(terpri)
;
(defun fonc(&optional &key x y z)
    (format t "~a~%" (list x y z))
)
(fonc :x 2 :y 4)
;
(write (
            (lambda (x)
                (* x x)
            )
            5
       )
)
(mapcar (lambda (x) (print (* x x))) '(2 3 4))